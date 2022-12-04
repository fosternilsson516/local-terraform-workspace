locals {
    all_env-configs = {
        default : local.env_default
        dev : local.env_dev
        qa : local.env_qa
        prd : local.env_prd
    }

    env_config = merg(local.all_env_configs.default, local.all_env_configs[var.env_name])
}