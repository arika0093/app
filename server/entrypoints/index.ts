import { init } from '$/service/app'
import { PORT } from '$/service/envValues'

init()
  .listen(PORT, '0.0.0.0')
  .then(() => {
    // PM2 graceful start
    // See also https://pm2.keymetrics.io/docs/usage/signals-clean-restart/
    process.send?.('ready')
  })
