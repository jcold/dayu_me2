serve:
	@RUST_BACKTRACE=1 daobox-site serve \
		--assets-dir ./dist/assets \
		--assets-prefix / \
		--dist-dir ./dist \
		--templates-dir ./src

export-all:
	@RUST_BACKTRACE=1 daobox-site serve \
		--assets-dir ./dist/assets \
		--assets-prefix / \
		--dist-dir ./dist \
		--templates-dir ./src \
		--excludes /site/docs/ \
		--export

fe-dev:
	pnpm run dev

build-fe:
	pnpm run build

dist: build-fe export-all


sync-fe:
	./sync_fe_dev_2.sh /Users/dayu/Coder/yiibox/daobox_fe