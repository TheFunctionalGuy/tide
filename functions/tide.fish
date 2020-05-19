function tide -a subcommand
    set -l tideSubcommand "tide_$subcommand"
    set -l tideCommands 'configure' 'uninstall' 'help'

    if contains $subcommand $tideCommands
        source "$tide_dir/functions/$subcommand.fish"
        $tideSubcommand $argv[2..-1]
    else
        tide help
    end
    functions -e $tideSubcommand
end