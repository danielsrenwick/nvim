local ok, whichkey = pcall(require, "which-key")

if not ok then
    return
end

local conf = {
    window = {
        border = "single",
        position = "bottom",
    },
}

local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
}

local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    ["e"] = { "<cmd>NeoTreeShowToggle<cr>", "Explorer" },
    ["u"] = { "<cmd>UndotreeToggle<cr>", "Undotree" },

    b = {
        name = "Buffer",
        c = { "<Cmd>bd!<Cr>", "Close current buffer" },
        D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },

    p = {
        name = "Project",
        v = { "<cmd>Ex<cr>", "View" },
    },

    P = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    g = {
        name = "Git",
        s = { "<cmd>Neogit<CR>", "Status" },
    },

    f = {
        name = "Find",
        f = { "<cmd>Telescope find_files<cr>", "Files" },
        a = { "<cmd>Telescope live_grep<cr>", "All" },
        b = { "<cmd>Telescope buffers<cr>", "Buffers" },
        h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
        g = { "<cmd>Telescope git_files<cr>", "Git Repo" },
        r = { "<cmd>Telescope oldfiles<cr>", "Recent Files", },
    },

    l = {
        name = "LSP",
        f = { "<cmd>LspZeroFormat<cr>", "Format" },
        a = { "<cmd>LspZeroWorkspaceAdd<cr>", "Add to Workspace" },
        r = { "<cmd>LspZeroWorkspaceRemove<cr>", "Remove from Workspace" },
        l = { "<cmd>LspZeroWorkspaceList<cr>", "List Workspace" },
    }
}

whichkey.setup(conf)
whichkey.register(mappings, opts)
