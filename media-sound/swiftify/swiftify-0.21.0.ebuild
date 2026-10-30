EAPI=8

CRATES="
	adler2@2.0.1
	aes@0.8.4
	aho-corasick@1.1.5
	allocator-api2@0.2.21
	alsa-sys@0.3.1
	alsa@0.9.1
	android_system_properties@0.1.6
	anstream@1.0.0
	anstyle-parse@1.0.0
	anstyle-query@1.1.5
	anstyle-wincon@3.0.11
	anstyle@1.0.14
	anyhow@1.0.104
	arrayvec@0.7.8
	async-trait@0.1.92
	atomic-waker@1.1.2
	autocfg@1.5.1
	base64@0.22.1
	base64ct@1.8.3
	bitflags@1.3.2
	bitflags@2.13.1
	block-buffer@0.10.4
	bumpalo@3.20.3
	bytemuck@1.25.2
	byteorder@1.5.0
	bytes@1.12.1
	cc@1.4.4
	cesu8@1.1.0
	cfg-if@1.0.4
	chrono@0.4.45
	cipher@0.4.4
	colorchoice@1.0.5
	combine@4.6.8
	const-oid@0.9.6
	core-foundation-sys@0.8.7
	core-foundation@0.10.1
	core-foundation@0.9.4
	coreaudio-rs@0.13.0
	cpal@0.16.0
	cpufeatures@0.2.17
	crc32fast@1.5.1
	crypto-common@0.1.7
	ctr@0.9.2
	darling@0.20.11
	darling_core@0.20.11
	darling_macro@0.20.11
	dasp_sample@0.11.0
	data-encoding@2.11.1
	defmt-macros@1.1.1
	defmt-parser@1.0.0
	defmt@1.1.1
	der@0.7.10
	deranged@0.5.8
	derive_builder@0.20.2
	derive_builder_core@0.20.2
	derive_builder_macro@0.20.2
	digest@0.10.7
	dispatch2@0.3.1
	displaydoc@0.2.7
	either@1.18.0
	encoding_rs@0.8.35
	env_filter@2.0.0
	env_logger@0.11.11
	equivalent@1.0.2
	errno@0.3.14
	extended@0.1.0
	fastrand@2.5.0
	find-msvc-tools@0.1.11
	flate2@1.1.10
	fnv@1.0.7
	foldhash@0.2.0
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.2
	futures-channel@0.3.34
	futures-core@0.3.34
	futures-io@0.3.34
	futures-macro@0.3.34
	futures-sink@0.3.34
	futures-task@0.3.34
	futures-timer@3.0.4
	futures-util@0.3.34
	generic-array@0.14.7
	getopts@0.2.24
	getrandom@0.2.17
	getrandom@0.3.4
	getrandom@0.4.3
	governor@0.10.4
	h2@0.4.19
	hashbrown@0.16.1
	hashbrown@0.17.1
	headers-core@0.3.0
	headers@0.4.1
	hmac@0.12.1
	home@0.5.12
	hostname@0.4.2
	hound@3.5.1
	http-body-util@0.1.5
	http-body@1.1.0
	http@1.5.0
	httparse@1.10.1
	httpdate@1.0.3
	hyper-proxy2@0.1.0
	hyper-tls@0.6.0
	hyper-util@0.1.20
	hyper@1.11.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.65
	icu_collections@2.3.0
	icu_locale_core@2.3.0
	icu_normalizer@2.3.0
	icu_normalizer_data@2.3.0
	icu_properties@2.3.0
	icu_properties_data@2.3.0
	icu_provider@2.3.1
	ident_case@1.0.1
	idna@1.1.0
	idna_adapter@1.2.2
	if-addrs@0.14.0
	indexmap@2.14.0
	inout@0.1.4
	ipnet@2.12.1
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.2
	itoa@1.0.18
	jiff-core@0.1.0
	jiff-static@0.2.35
	jiff@0.2.35
	jni-sys-macros@0.4.1
	jni-sys@0.3.1
	jni-sys@0.4.1
	jni@0.21.1
	js-sys@0.3.104
	lazy_static@1.5.0
	libc@0.2.189
	libm@0.2.16
	libmdns@0.10.1
	librespot-audio@0.8.0
	librespot-connect@0.8.0
	librespot-discovery@0.8.0
	librespot-metadata@0.8.0
	librespot-oauth@0.8.0
	librespot-playback@0.8.0
	librespot-protocol@0.8.0
	librespot@0.8.0
	linux-raw-sys@0.12.1
	linux-raw-sys@0.4.15
	litemap@0.8.3
	lock_api@0.4.14
	lofty@0.25.4
	lofty_attr@0.13.0
	log@0.4.34
	mach2@0.4.3
	memchr@2.8.3
	mime@0.3.17
	miniz_oxide@0.9.1
	mio@1.2.2
	multimap@0.10.1
	native-tls@0.2.18
	ndk-context@0.1.1
	ndk-sys@0.6.0+11769913
	ndk@0.9.0
	nonzero_ext@0.3.0
	ntapi@0.4.3
	num-bigint-dig@0.8.6
	num-bigint@0.4.8
	num-complex@0.4.6
	num-conv@0.2.2
	num-derive@0.4.2
	num-integer@0.1.47
	num-iter@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_enum@0.7.6
	num_enum_derive@0.7.6
	num_threads@0.1.7
	oauth2@5.0.0
	objc2-audio-toolbox@0.3.2
	objc2-core-audio-types@0.3.2
	objc2-core-audio@0.3.2
	objc2-core-foundation@0.3.2
	objc2-encode@4.1.0
	objc2-foundation@0.3.2
	objc2-io-kit@0.3.2
	objc2@0.6.4
	ogg_pager@0.7.2
	once_cell@1.21.4
	once_cell_polyfill@1.70.2
	open@5.4.2
	openssl-macros@0.1.1
	openssl-probe@0.2.1
	openssl-sys@0.9.117
	openssl@0.10.81
	parking_lot@0.12.5
	parking_lot_core@0.9.12
	paste@1.0.15
	pbkdf2@0.12.2
	pem-rfc7468@0.7.0
	percent-encoding@2.3.2
	pin-project-lite@0.2.17
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.34
	portable-atomic-util@0.2.7
	portable-atomic@1.15.0
	potential_utf@0.1.6
	powerfmt@0.2.0
	ppv-lite86@0.2.21
	primal-check@0.3.4
	priority-queue@2.7.0
	proc-macro-crate@3.5.0
	proc-macro2@1.0.107
	protobuf-codegen@3.7.2
	protobuf-json-mapping@3.7.2
	protobuf-parse@3.7.2
	protobuf-support@3.7.2
	protobuf@3.7.2
	quick-xml@0.38.4
	quote@1.0.47
	r-efi@5.3.0
	r-efi@6.0.0
	rand@0.8.8
	rand@0.9.5
	rand_chacha@0.3.1
	rand_chacha@0.9.0
	rand_core@0.6.4
	rand_core@0.9.5
	rand_distr@0.5.1
	redox_syscall@0.5.18
	regex-automata@0.4.18
	regex-syntax@0.8.11
	regex@1.13.1
	reqwest@0.12.28
	rodio@0.21.1
	rsa@0.9.10
	rustfft@6.4.1
	rustix@0.38.44
	rustix@1.1.4
	rustls-pki-types@1.15.1
	rustversion@1.0.23
	ryu@1.0.23
	same-file@1.0.6
	schannel@0.1.29
	scopeguard@1.2.0
	security-framework-sys@2.17.0
	security-framework@3.7.0
	serde@1.0.229
	serde_core@1.0.229
	serde_derive@1.0.229
	serde_json@1.0.151
	serde_path_to_error@0.1.20
	serde_repr@0.1.21
	serde_urlencoded@0.7.1
	sha1@0.10.7
	sha2@0.10.9
	shannon@0.2.0
	shell-words@1.1.1
	shlex@2.0.1
	signal-hook-registry@1.4.8
	signature@2.2.0
	simd-adler32@0.3.10
	slab@0.4.12
	smallvec@1.15.2
	socket2@0.6.5
	spin@0.9.9
	spinning_top@0.3.0
	spki@0.7.3
	stable_deref_trait@1.2.1
	strength_reduce@0.2.4
	strsim@0.11.1
	subtle@2.6.1
	swift-bridge-build@0.1.59
	swift-bridge-ir@0.1.59
	swift-bridge-macro@0.1.59
	swift-bridge@0.1.59
	symphonia-bundle-flac@0.5.5
	symphonia-bundle-mp3@0.5.5
	symphonia-codec-aac@0.5.5
	symphonia-codec-alac@0.5.5
	symphonia-codec-pcm@0.5.5
	symphonia-codec-vorbis@0.5.5
	symphonia-core@0.5.5
	symphonia-format-isomp4@0.5.5
	symphonia-format-ogg@0.5.5
	symphonia-format-riff@0.5.5
	symphonia-metadata@0.5.5
	symphonia-utils-xiph@0.5.5
	symphonia@0.5.5
	syn@1.0.109
	syn@2.0.119
	syn@3.0.4
	sync_wrapper@1.0.2
	synstructure@0.13.2
	sysinfo@0.36.1
	system-configuration-sys@0.6.0
	system-configuration@0.7.0
	tempfile@3.27.0
	thiserror-impl@1.0.69
	thiserror-impl@2.0.20
	thiserror@1.0.69
	thiserror@2.0.20
	time-core@0.1.9
	time-macros@0.2.32
	time@0.3.55
	tinystr@0.8.4
	tokio-macros@2.7.2
	tokio-native-tls@0.3.1
	tokio-stream@0.1.19
	tokio-tungstenite@0.28.0
	tokio-util@0.7.19
	tokio@1.53.1
	toml_datetime@1.1.1+spec-1.1.0
	toml_edit@0.25.13+spec-1.1.0
	toml_parser@1.1.3+spec-1.1.0
	tower-http@0.6.11
	tower-layer@0.3.3
	tower-service@0.3.3
	tower@0.5.3
	tracing-core@0.1.36
	tracing@0.1.44
	transpose@0.2.3
	try-lock@0.2.5
	tungstenite@0.28.0
	typenum@1.20.1
	unicode-ident@1.0.24
	unicode-width@0.2.2
	url@2.5.8
	utf-8@0.7.6
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.26.0
	vcpkg@0.2.15
	vergen-gitcl@1.0.8
	vergen-lib@0.1.6
	vergen@9.0.6
	version_check@0.9.5
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.1+wasi-snapshot-preview1
	wasip2@1.0.4+wasi-0.2.12
	wasm-bindgen-futures@0.4.77
	wasm-bindgen-macro-support@0.2.127
	wasm-bindgen-macro@0.2.127
	wasm-bindgen-shared@0.2.127
	wasm-bindgen@0.2.127
	web-sys@0.3.104
	web-time@1.1.0
	which@4.4.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.11
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-collections@0.2.0
	windows-core@0.54.0
	windows-core@0.61.2
	windows-core@0.62.2
	windows-future@0.2.1
	windows-implement@0.60.2
	windows-interface@0.59.3
	windows-link@0.1.3
	windows-link@0.2.1
	windows-numerics@0.2.0
	windows-registry@0.6.1
	windows-result@0.1.2
	windows-result@0.3.4
	windows-result@0.4.1
	windows-strings@0.4.2
	windows-strings@0.5.1
	windows-sys@0.45.0
	windows-sys@0.59.0
	windows-sys@0.61.2
	windows-targets@0.42.2
	windows-targets@0.52.6
	windows-threading@0.1.0
	windows@0.54.0
	windows@0.61.3
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.52.6
	winnow@1.0.4
	wit-bindgen@0.57.1
	writeable@0.6.4
	yoke-derive@0.8.2
	yoke@0.8.3
	zerocopy-derive@0.8.56
	zerocopy@0.8.56
	zerofrom-derive@0.1.7
	zerofrom@0.1.8
	zeroize@1.9.0
	zerotrie@0.2.5
	zerovec-derive@0.11.6
	zerovec@0.11.8
	zlib-rs@0.6.8
	zmij@1.0.23
"

inherit cmake cargo xdg-utils

DESCRIPTION="A Spotify player built with Qt Quick and a Rust core around librespot"
HOMEPAGE="https://shredos.dev/ https://github.com/swiftify-org/swiftify"
SRC_URI="
	https://github.com/swiftify-org/swiftify/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.tar.gz
	https://github.com/corrosion-rs/corrosion/archive/refs/tags/v0.6.1.tar.gz
		-> corrosion-0.6.1.tar.gz
	https://raw.githubusercontent.com/google/material-design-icons/737e3324305806514d7909874fa1818ae1808232/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf
		-> MaterialSymbolsRounded.ttf
	https://raw.githubusercontent.com/google/fonts/a0e3dbcdc3a3ecfafff3f071159ae0221628922d/ofl/googlesansflex/GoogleSansFlex%5BGRAD,ROND,opsz,slnt,wdth,wght%5D.ttf
		-> GoogleSansFlex.ttf
	https://raw.githubusercontent.com/google/fonts/a0e3dbcdc3a3ecfafff3f071159ae0221628922d/ofl/googlesansflex/OFL.txt
		-> GoogleSansFlex-OFL.txt
	test? ( https://raw.githubusercontent.com/google/material-design-icons/737e3324305806514d7909874fa1818ae1808232/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.codepoints
		-> MaterialSymbolsRounded.codepoints )
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}"/${PN}-${PV}

LICENSE="GPL-3+"
# Font license
LICENSE+=" OFL-1.1"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD MIT MPL-2.0 Unicode-3.0 ZLIB"

SLOT="0"
KEYWORDS="~amd64"

IUSE="integration +soloist test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-qt/qtbase-6.10.0:6[gui,network,concurrent,widgets,dbus,gssapi]
	>=dev-qt/qtdeclarative-6.10.0:6[network,widgets]
	>=dev-qt/qtwayland-6.10.0:6
	soloist? ( >=dev-qt/qtwebsockets-6.10.0:6 )
	dev-libs/qtkeychain[keyring]
	dev-libs/qcoro[network]
	dev-libs/openssl
	media-video/pipewire[pipewire-alsa]
	media-libs/alsa-lib
	integration? ( media-libs/libpulse )
"
DEPEND="
	${RDEPEND}
"
BDEPEND="
	integration? ( virtual/pkgconfig )
	dev-qt/qtshadertools
	|| (
		dev-lang/rust
		dev-lang/rust-bin
	)
"

option() {
	usex "$1" ON OFF
}

src_configure() {
	mkdir -p "${BUILD_DIR}/fonts" || die
	cp "${DISTDIR}/MaterialSymbolsRounded.ttf" "${BUILD_DIR}/fonts/MaterialSymbolsRounded.ttf" || die
	cp "${DISTDIR}/GoogleSansFlex.ttf" "${BUILD_DIR}/fonts/GoogleSansFlex.ttf" || die
	cp "${DISTDIR}/GoogleSansFlex-OFL.txt" "${BUILD_DIR}/fonts/GoogleSansFlex-OFL.txt" || die

	if use test; then
		cp "${DISTDIR}/MaterialSymbolsRounded.codepoints" "${BUILD_DIR}/fonts/MaterialSymbolsRounded.codepoints" || die
	fi

	local mycmakeargs=(
		-DBUILD_TESTING=$(option test)
		-DSWIFTIFY_DESKTOP_INTEGRATION=$(option integration)
		-DSWIFTIFY_SOLOIST=$(option soloist)
		-DFETCHCONTENT_FULLY_DISCONNECTED=ON
		"-DFETCHCONTENT_SOURCE_DIR_CORROSION=${WORKDIR}/corrosion-0.6.1"
	)

	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
}

pkg_postinst() {
	xdg_icon_cache_update

	elog "If unable to play songs with error: \"librespot_core::audio_key] error audio key 0 1\""
	elog "You may have to install soloist: https://github.com/swiftify-org/swiftify/tree/main#spotify-could-not-load-this-track-soloist"
}

pkg_postrm() {
	 xdg_icon_cache_update
}
