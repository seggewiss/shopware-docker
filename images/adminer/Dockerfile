FROM adminer

USER root
COPY patch.php /tmp/patch.php

RUN php /tmp/patch.php && \
	rm /tmp/patch.php

USER adminer
