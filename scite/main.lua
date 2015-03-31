-- -*- coding: utf-8 -

-- --------------------------------------------------------------------------------------------------------------------------------
-- scipm.file_info namespace
-- --------------------------------------------------------------------------------------------------------------------------------
scipm.file_info = {}
scipm.file_info.config = {
    ["showCd"] = "1",
    ["ifWinShowCdGitBash"] = "0",
    ["ifWinShowCdMobaXterm"] = "0",
    ["ifWinShowUnixFilePath"] = "1"
};

-- scipm.file_info.exec()
-- -------------------------------------------------------------------------------
scipm.file_info.exec = function()


    -- swith SciTE[Global|User|Directory|].properties
    local config_ifWinShowUnixFilePath = scipm.file_info.config.ifWinShowUnixFilePath;
    if props["scipm.file_info.config.ifWinShowUnixFilePath"] ~= "" then
        config_ifWinShowUnixFilePath = props["scipm.file_info.config.ifWinShowUnixFilePath"];
    end
    local config_showCd = scipm.file_info.config.showCd;
    if props["scipm.file_info.config.showCd"] ~= "" then
        config_showCd = props["scipm.file_info.config.showCd"];
    end
    local config_ifWinShowCdGitBash = scipm.file_info.config.ifWinShowCdGitBash;
    if props["scipm.file_info.config.ifWinShowCdGitBash"] ~= "" then
        config_ifWinShowCdGitBash = props["scipm.file_info.config.ifWinShowCdGitBash"];
    end
    local config_ifWinShowCdMobaXterm = scipm.file_info.config.ifWinShowCdMobaXterm;
    if props["scipm.file_info.config.ifWinShowCdMobaXterm"] ~= "" then
        config_ifWinShowCdMobaXterm = props["scipm.file_info.config.ifWinShowCdMobaXterm"];
    end

    print("--------------------------------------------------------------------------------")
    print('File[Path|Dir|NameExt|Name|Ext]')
    print("--------------------------------------------------------------------------------")
    print(props['FilePath'])
    print(props['FileDir'])
    print(props['FileNameExt'])
    print(props['FileName'])
    print(props['FileExt'])
    print('')

    if (config_showCd == "1") then
        print("cd \""..props['FileDir'].."\"")
    end
    if (props['PLAT_WIN'] == "1") then

        local tmpString ="";

        -- cd
        tmpString = string.gsub(props['FileDir'], "(\\)", "/")
        tmpString = string.gsub(tmpString, "(:/)", "/")
        if (config_ifWinShowCdGitBash == "1") then
            print("cd /"..tmpString)
        end
        if (config_ifWinShowCdMobaXterm== "1") then
            print("cd /media/"..tmpString)
        end

        -- unix file path
        if (config_ifWinShowUnixFilePath == "1") then
            tmpString = string.gsub(props['FilePath'], "(\\)", "/")
            tmpString = string.gsub(tmpString, "(:/)", "/")
            print("/" .. tmpString)
        end

    end

end
