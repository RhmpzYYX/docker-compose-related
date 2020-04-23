FROM rabbitmq:3.8-management
COPY --chown=rabbitmq:rabbitmq rabbitmq_delayed_message_exchange-3.8.0.ez /opt/rabbitmq/plugins/
COPY --chown=rabbitmq:rabbitmq enabled_plugins /etc/rabbitmq/enabled_plugins