# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

#
# awk '{print "\x27" $1 " " $2 "\x27"}' go.sum | sort -u
#
EGO_SUM=(
'cloud.google.com/go v0.26.0/go.mod'
'github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod'
'github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod'
'github.com/andybalholm/brotli v1.0.1'
'github.com/andybalholm/brotli v1.0.1/go.mod'
'github.com/armon/consul-api v0.0.0-20180202201655-eb2c6b5be1b6/go.mod'
'github.com/asdine/storm v2.1.2+incompatible'
'github.com/asdine/storm v2.1.2+incompatible/go.mod'
'github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod'
'github.com/beorn7/perks v1.0.0/go.mod'
'github.com/bifurcation/mint v0.0.0-20180715133206-93c51c6ce115/go.mod'
'github.com/BurntSushi/toml v0.3.1'
'github.com/BurntSushi/toml v0.3.1/go.mod'
'github.com/caddyserver/caddy v1.0.3'
'github.com/caddyserver/caddy v1.0.3/go.mod'
'github.com/cenkalti/backoff v2.1.1+incompatible'
'github.com/cenkalti/backoff v2.1.1+incompatible/go.mod'
'github.com/cespare/xxhash v1.1.0/go.mod'
'github.com/cheekybits/genny v0.0.0-20170328200008-9127e812e1e9/go.mod'
'github.com/client9/misspell v0.3.4/go.mod'
'github.com/coreos/bbolt v1.3.2/go.mod'
'github.com/coreos/etcd v3.3.10+incompatible/go.mod'
'github.com/coreos/go-etcd v2.0.0+incompatible/go.mod'
'github.com/coreos/go-semver v0.2.0/go.mod'
'github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod'
'github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod'
'github.com/cpuguy83/go-md2man v1.0.10/go.mod'
'github.com/DataDog/zstd v1.4.0'
'github.com/DataDog/zstd v1.4.0/go.mod'
'github.com/davecgh/go-spew v1.1.0/go.mod'
'github.com/davecgh/go-spew v1.1.1'
'github.com/davecgh/go-spew v1.1.1/go.mod'
'github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod'
'github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954/go.mod'
'github.com/disintegration/imaging v1.6.2'
'github.com/disintegration/imaging v1.6.2/go.mod'
'github.com/dsnet/compress v0.0.2-0.20210315054119-f66993602bf5'
'github.com/dsnet/compress v0.0.2-0.20210315054119-f66993602bf5/go.mod'
'github.com/dsnet/golib v0.0.0-20171103203638-1ea166775780/go.mod'
'github.com/dsoprea/go-exif/v2 v2.0.0-20200321225314-640175a69fe4/go.mod'
'github.com/dsoprea/go-exif/v3 v3.0.0-20200717053412-08f1b6708903/go.mod'
'github.com/dsoprea/go-exif/v3 v3.0.0-20201216222538-db167117f483'
'github.com/dsoprea/go-exif/v3 v3.0.0-20201216222538-db167117f483/go.mod'
'github.com/dsoprea/go-logging v0.0.0-20190624164917-c4f10aab7696/go.mod'
'github.com/dsoprea/go-logging v0.0.0-20200517223158-a10564966e9d'
'github.com/dsoprea/go-logging v0.0.0-20200517223158-a10564966e9d/go.mod'
'github.com/dsoprea/go-utility v0.0.0-20200711062821-fab8125e9bdf'
'github.com/dsoprea/go-utility v0.0.0-20200711062821-fab8125e9bdf/go.mod'
'github.com/dsoprea/go-utility/v2 v2.0.0-20200717064901-2fccff4aa15e'
'github.com/dsoprea/go-utility/v2 v2.0.0-20200717064901-2fccff4aa15e/go.mod'
'github.com/dustin/go-humanize v1.0.0/go.mod'
'github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568'
'github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod'
'github.com/fsnotify/fsnotify v1.4.7'
'github.com/fsnotify/fsnotify v1.4.7/go.mod'
'github.com/ghodss/yaml v1.0.0/go.mod'
'github.com/go-acme/lego v2.5.0+incompatible'
'github.com/go-acme/lego v2.5.0+incompatible/go.mod'
'github.com/go-errors/errors v1.0.1/go.mod'
'github.com/go-errors/errors v1.0.2/go.mod'
'github.com/go-errors/errors v1.1.1'
'github.com/go-errors/errors v1.1.1/go.mod'
'github.com/gogo/protobuf v1.1.1/go.mod'
'github.com/gogo/protobuf v1.2.1/go.mod'
'github.com/go-kit/kit v0.8.0/go.mod'
'github.com/golang/geo v0.0.0-20190916061304-5b978397cfec/go.mod'
'github.com/golang/geo v0.0.0-20200319012246-673a6f80352d'
'github.com/golang/geo v0.0.0-20200319012246-673a6f80352d/go.mod'
'github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod'
'github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef/go.mod'
'github.com/golang-jwt/jwt v3.2.2+incompatible'
'github.com/golang-jwt/jwt v3.2.2+incompatible/go.mod'
'github.com/golang/mock v1.1.1/go.mod'
'github.com/golang/mock v1.2.0/go.mod'
'github.com/golang/protobuf v1.2.0/go.mod'
'github.com/golang/protobuf v1.3.1'
'github.com/golang/protobuf v1.3.1/go.mod'
'github.com/golang/snappy v0.0.2'
'github.com/golang/snappy v0.0.2/go.mod'
'github.com/go-logfmt/logfmt v0.3.0/go.mod'
'github.com/go-logfmt/logfmt v0.4.0/go.mod'
'github.com/google/btree v1.0.0/go.mod'
'github.com/google/go-cmp v0.2.0/go.mod'
'github.com/google/go-cmp v0.5.5/go.mod'
'github.com/google/uuid v1.1.1'
'github.com/google/uuid v1.1.1/go.mod'
'github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1'
'github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod'
'github.com/gorilla/mux v1.7.3'
'github.com/gorilla/mux v1.7.3/go.mod'
'github.com/gorilla/websocket v1.4.0/go.mod'
'github.com/gorilla/websocket v1.4.1'
'github.com/gorilla/websocket v1.4.1/go.mod'
'github.com/go-stack/stack v1.8.0/go.mod'
'github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod'
'github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod'
'github.com/grpc-ecosystem/grpc-gateway v1.9.0/go.mod'
'github.com/hashicorp/golang-lru v0.0.0-20180201235237-0fb14efe8c47/go.mod'
'github.com/hashicorp/go-syslog v1.0.0/go.mod'
'github.com/hashicorp/hcl v1.0.0'
'github.com/hashicorp/hcl v1.0.0/go.mod'
'github.com/hpcloud/tail v1.0.0/go.mod'
'github.com/inconshreveable/mousetrap v1.0.0'
'github.com/inconshreveable/mousetrap v1.0.0/go.mod'
'github.com/jessevdk/go-flags v1.4.0/go.mod'
'github.com/jimstudt/http-authentication v0.0.0-20140401203705-3eca13d6893a/go.mod'
'github.com/jonboulle/clockwork v0.1.0/go.mod'
'github.com/jtolds/gls v4.20.0+incompatible'
'github.com/jtolds/gls v4.20.0+incompatible/go.mod'
'github.com/julienschmidt/httprouter v1.2.0/go.mod'
'github.com/kisielk/errcheck v1.1.0/go.mod'
'github.com/kisielk/gotool v1.0.0/go.mod'
'github.com/klauspost/compress v1.11.4'
'github.com/klauspost/compress v1.11.4/go.mod'
'github.com/klauspost/compress v1.4.1/go.mod'
'github.com/klauspost/cpuid v1.2.0'
'github.com/klauspost/cpuid v1.2.0/go.mod'
'github.com/klauspost/pgzip v1.2.5'
'github.com/klauspost/pgzip v1.2.5/go.mod'
'github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod'
'github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod'
'github.com/kr/pretty v0.1.0'
'github.com/kr/pretty v0.1.0/go.mod'
'github.com/kr/pty v1.1.1/go.mod'
'github.com/kr/text v0.1.0'
'github.com/kr/text v0.1.0/go.mod'
'github.com/kylelemons/godebug v0.0.0-20170820004349-d65d576e9348/go.mod'
'github.com/lucas-clemente/aes12 v0.0.0-20171027163421-cd47fb39b79f/go.mod'
'github.com/lucas-clemente/quic-clients v0.1.0/go.mod'
'github.com/lucas-clemente/quic-go-certificates v0.0.0-20160823095156-d2f86524cced/go.mod'
'github.com/lucas-clemente/quic-go v0.10.2/go.mod'
'github.com/magiconair/properties v1.8.0/go.mod'
'github.com/magiconair/properties v1.8.1'
'github.com/magiconair/properties v1.8.1/go.mod'
'github.com/marten-seemann/qtls v0.2.3/go.mod'
'github.com/maruel/natural v0.0.0-20180416170133-dbcb3e2e8cf1'
'github.com/maruel/natural v0.0.0-20180416170133-dbcb3e2e8cf1/go.mod'
'github.com/marusama/semaphore/v2 v2.4.1'
'github.com/marusama/semaphore/v2 v2.4.1/go.mod'
'github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod'
'github.com/mholt/archiver/v3 v3.5.1'
'github.com/mholt/archiver/v3 v3.5.1/go.mod'
'github.com/mholt/certmagic v0.6.2-0.20190624175158-6a42ef9fe8c2'
'github.com/mholt/certmagic v0.6.2-0.20190624175158-6a42ef9fe8c2/go.mod'
'github.com/miekg/dns v1.1.3'
'github.com/miekg/dns v1.1.3/go.mod'
'github.com/mitchellh/go-homedir v1.1.0'
'github.com/mitchellh/go-homedir v1.1.0/go.mod'
'github.com/mitchellh/mapstructure v1.1.2'
'github.com/mitchellh/mapstructure v1.1.2/go.mod'
'github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod'
'github.com/naoina/go-stringutil v0.1.0/go.mod'
'github.com/naoina/toml v0.1.1/go.mod'
'github.com/nwaples/rardecode v1.1.0'
'github.com/nwaples/rardecode v1.1.0/go.mod'
'github.com/oklog/ulid v1.3.1/go.mod'
'github.com/OneOfOne/xxhash v1.2.2/go.mod'
'github.com/onsi/ginkgo v1.6.0/go.mod'
'github.com/onsi/ginkgo v1.8.0/go.mod'
'github.com/onsi/gomega v1.5.0/go.mod'
'github.com/pelletier/go-toml v1.2.0/go.mod'
'github.com/pelletier/go-toml v1.6.0'
'github.com/pelletier/go-toml v1.6.0/go.mod'
'github.com/pierrec/lz4/v4 v4.1.2'
'github.com/pierrec/lz4/v4 v4.1.2/go.mod'
'github.com/pkg/errors v0.8.0/go.mod'
'github.com/pmezard/go-difflib v1.0.0'
'github.com/pmezard/go-difflib v1.0.0/go.mod'
'github.com/prometheus/client_golang v0.9.1/go.mod'
'github.com/prometheus/client_golang v0.9.3/go.mod'
'github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod'
'github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod'
'github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce/go.mod'
'github.com/prometheus/common v0.4.0/go.mod'
'github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod'
'github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084/go.mod'
'github.com/prometheus/tsdb v0.7.1/go.mod'
'github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod'
'github.com/russross/blackfriday v0.0.0-20170610170232-067529f716f4/go.mod'
'github.com/russross/blackfriday v1.5.2/go.mod'
'github.com/Sereal/Sereal v0.0.0-20190430203904-6faf9605eb56'
'github.com/Sereal/Sereal v0.0.0-20190430203904-6faf9605eb56/go.mod'
'github.com/sirupsen/logrus v1.2.0/go.mod'
'github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d'
'github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod'
'github.com/smartystreets/goconvey v1.6.4'
'github.com/smartystreets/goconvey v1.6.4/go.mod'
'github.com/soheilhy/cmux v0.1.4/go.mod'
'github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod'
'github.com/spf13/afero v1.1.2/go.mod'
'github.com/spf13/afero v1.2.2'
'github.com/spf13/afero v1.2.2/go.mod'
'github.com/spf13/cast v1.3.0'
'github.com/spf13/cast v1.3.0/go.mod'
'github.com/spf13/cobra v0.0.5'
'github.com/spf13/cobra v0.0.5/go.mod'
'github.com/spf13/jwalterweatherman v1.0.0/go.mod'
'github.com/spf13/jwalterweatherman v1.1.0'
'github.com/spf13/jwalterweatherman v1.1.0/go.mod'
'github.com/spf13/pflag v1.0.3/go.mod'
'github.com/spf13/pflag v1.0.5'
'github.com/spf13/pflag v1.0.5/go.mod'
'github.com/spf13/viper v1.3.2/go.mod'
'github.com/spf13/viper v1.6.1'
'github.com/spf13/viper v1.6.1/go.mod'
'github.com/stretchr/objx v0.1.0/go.mod'
'github.com/stretchr/objx v0.1.1/go.mod'
'github.com/stretchr/testify v1.2.2/go.mod'
'github.com/stretchr/testify v1.3.0/go.mod'
'github.com/stretchr/testify v1.6.1'
'github.com/stretchr/testify v1.6.1/go.mod'
'github.com/subosito/gotenv v1.2.0'
'github.com/subosito/gotenv v1.2.0/go.mod'
'github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod'
'github.com/tomasen/realip v0.0.0-20180522021738-f0c99a92ddce'
'github.com/tomasen/realip v0.0.0-20180522021738-f0c99a92ddce/go.mod'
'github.com/ugorji/go/codec v0.0.0-20181204163529-d75b2dcb6bc8/go.mod'
'github.com/ugorji/go v1.1.4/go.mod'
'github.com/ulikunitz/xz v0.5.8/go.mod'
'github.com/ulikunitz/xz v0.5.9'
'github.com/ulikunitz/xz v0.5.9/go.mod'
'github.com/vmihailenco/msgpack v4.0.4+incompatible'
'github.com/vmihailenco/msgpack v4.0.4+incompatible/go.mod'
'github.com/xi2/xz v0.0.0-20171230120015-48954b6210f8'
'github.com/xi2/xz v0.0.0-20171230120015-48954b6210f8/go.mod'
'github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod'
'github.com/xordataexchange/crypt v0.0.3-0.20170626215501-b2862e3d0a77/go.mod'
'go.etcd.io/bbolt v1.3.2/go.mod'
'go.etcd.io/bbolt v1.3.3'
'go.etcd.io/bbolt v1.3.3/go.mod'
'golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod'
'golang.org/x/crypto v0.0.0-20181203042331-505ab145d0a9/go.mod'
'golang.org/x/crypto v0.0.0-20190123085648-057139ce5d2b/go.mod'
'golang.org/x/crypto v0.0.0-20190228161510-8dd112bcdc25/go.mod'
'golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod'
'golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37'
'golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37/go.mod'
'golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8'
'golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8/go.mod'
'golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod'
'golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod'
'golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod'
'golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod'
'golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod'
'golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod'
'golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod'
'golang.org/x/net v0.0.0-20190125091013-d26f9f9a57f3/go.mod'
'golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod'
'golang.org/x/net v0.0.0-20190328230028-74de082e2cca/go.mod'
'golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod'
'golang.org/x/net v0.0.0-20190522155817-f3200d17e092/go.mod'
'golang.org/x/net v0.0.0-20191209160850-c0dbc17a3553/go.mod'
'golang.org/x/net v0.0.0-20200320220750-118fecf932d8/go.mod'
'golang.org/x/net v0.0.0-20200501053045-e0ff5e5a1de5/go.mod'
'golang.org/x/net v0.0.0-20200513185701-a91f0712d120/go.mod'
'golang.org/x/net v0.0.0-20200528225125-3c3fba18258b'
'golang.org/x/net v0.0.0-20200528225125-3c3fba18258b/go.mod'
'golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod'
'golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod'
'golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod'
'golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4'
'golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod'
'golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod'
'golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod'
'golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod'
'golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod'
'golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod'
'golang.org/x/sys v0.0.0-20181205085412-a5c9d58dba9a/go.mod'
'golang.org/x/sys v0.0.0-20190124100055-b90733256f2e/go.mod'
'golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod'
'golang.org/x/sys v0.0.0-20190228124157-a34e9553db1e/go.mod'
'golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod'
'golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod'
'golang.org/x/sys v0.0.0-20200523222454-059865788121'
'golang.org/x/sys v0.0.0-20200523222454-059865788121/go.mod'
'golang.org/x/text v0.3.0/go.mod'
'golang.org/x/text v0.3.2'
'golang.org/x/text v0.3.2/go.mod'
'golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod'
'golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod'
'golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod'
'golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod'
'golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod'
'golang.org/x/tools v0.0.0-20190328211700-ab21143f2384/go.mod'
'golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod'
'google.golang.org/appengine v1.1.0/go.mod'
'google.golang.org/appengine v1.5.0'
'google.golang.org/appengine v1.5.0/go.mod'
'google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod'
'google.golang.org/grpc v1.19.0/go.mod'
'google.golang.org/grpc v1.21.0/go.mod'
'gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod'
'gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod'
'gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127'
'gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod'
'gopkg.in/fsnotify.v1 v1.4.7/go.mod'
'gopkg.in/ini.v1 v1.51.0'
'gopkg.in/ini.v1 v1.51.0/go.mod'
'gopkg.in/mcuadros/go-syslog.v2 v2.2.1/go.mod'
'gopkg.in/natefinch/lumberjack.v2 v2.0.0'
'gopkg.in/natefinch/lumberjack.v2 v2.0.0/go.mod'
'gopkg.in/resty.v1 v1.12.0/go.mod'
'gopkg.in/square/go-jose.v2 v2.2.2'
'gopkg.in/square/go-jose.v2 v2.2.2/go.mod'
'gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod'
'gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod'
'gopkg.in/yaml.v2 v2.2.1/go.mod'
'gopkg.in/yaml.v2 v2.2.2/go.mod'
'gopkg.in/yaml.v2 v2.2.4/go.mod'
'gopkg.in/yaml.v2 v2.2.7/go.mod'
'gopkg.in/yaml.v2 v2.3.0'
'gopkg.in/yaml.v2 v2.3.0/go.mod'
'gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c'
'gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod'
'go.uber.org/atomic v1.4.0/go.mod'
'go.uber.org/multierr v1.1.0/go.mod'
'go.uber.org/zap v1.10.0/go.mod'
'honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod'
)

go-module_set_globals

DESCRIPTION="Web File Browser"

HOMEPAGE="https://filebrowser.org/"

SRC_URI="https://github.com/filebrowser/filebrowser/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
#REQUIRED_USE="|| ( mysql postgres sqlite )"

RESTRICT="mirror network-sandbox"

RDEPEND=""

DEPEND="${RDEPEND}"

BDEPEND="net-libs/nodejs
	virtual/pkgconfig"

NPM_OPTIONS="--no-progress"

src_configure() {
	pushd "./frontend"
	npm ${NPM_OPTIONS} ci || die "configure failed"
	popd
}

src_compile() {
	pushd "./frontend"
	npm run build || die "compile failed"
	popd
	local MODULE="github.com/filebrowser/filebrowser/v2"
	local GOLDFLAGS="-X ${MODULE}/version.Version=${PV} -X ${MODULE}/version.CommitSHA=n/a"
	go build -ldflags "${GOLDFLAGS}" || die "compile failed"
}

src_install() {
	dobin "./filebrowser"

	newconfd "${FILESDIR}/filebrowser.confd" "filebrowser"
	newinitd "${FILESDIR}/filebrowser.initd" "filebrowser"

	dodoc CHANGELOG.md README.md
}