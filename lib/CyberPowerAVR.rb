require 'CyberPowerAVR/version'

module CyberPowerAVR
  class << self
    def to_hash
      output = Hash.new
      data = system_call.strip
      data.each_line do |line|
        if line[0...2] == "\t\t"
          hash = line_to_hash(line)
          output[hash[:key]] = hash[:value]
        end
      end
      output
    end

    def battery_percentage
      data = to_hash
      data['Battery Capacity'].split(' ')[0]
    end

    def load_watt
      data = to_hash
      data['Load'].split(' ')[0]
    end

    def load_percentage
      data = to_hash
      data['Load'].split('(')[1].split(' ')[0]
    end

    private
      def system_call
        `sudo pwrstat -status`
      end

      def line_to_hash(data)
        data = data.split('.')
        data.uniq!
        { key: data[0].strip, value: data[-1].strip }
      end
  end
end
