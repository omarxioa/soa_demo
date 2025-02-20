'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "6d425377b118ebb1d38c1bc65ab0a9d4",
"version.json": "2f7906b9ec98fcd533b502c0f322340e",
"index.html": "ea4306552410c7200cf1cd744c7ee3ca",
"/": "ea4306552410c7200cf1cd744c7ee3ca",
"main.dart.js": "321ee2c5d3053f425429f676556bdd72",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "58861e5de90edbc8d23ef156ad60ff52",
".git/config": "2ba3d71c33adbe3ec85df5c6e940da01",
".git/objects/61/e2789514cdbb868bd52a65e907ee57644161d7": "496442c766bc9fce08d154db9cd8e856",
".git/objects/95/2ae8c8a47ffb8d497142203d1937df6739cf0e": "e3ade70ea2b9b3482e6247baf4c3cd90",
".git/objects/59/4501dcca59bb96fbb9aa87131283622585f5ab": "5e9cf4350d0ada1eb09c415abb7990fe",
".git/objects/3c/40958c4632c774465438a8c698c90cdebc704d": "c50c99833b74d6cfff948eacec53796f",
".git/objects/3c/038af4fc1a2186a4d08299a9e56befb9c63f3b": "93c8b98f99ae8cbf914a78e668593b71",
".git/objects/51/60a960c2680062cca0f9944784b3917d960ce4": "c5d3697d81bec9ed733ada242b3e727f",
".git/objects/0b/9fcf3d6c6058acc662279d9d22099086a0c78a": "0f20d8b31472ed851f3506e98bb44282",
".git/objects/93/465d21233d6bae3a7c6451c23ddea72335f848": "65203487f8b7174e344ff6cc14b421ee",
".git/objects/be/aa58cdb73da59997414e70fc2b4af686fc9c8a": "965b55e238b65bd1ece34057b74c18af",
".git/objects/df/d6157dcc4a4bf18d2e0518b8f9f782197cc827": "6cf190d0104adfbb0a7262a09b194b1b",
".git/objects/df/3ff68551f3cb3a773a5368dcc3e2a7f0b03946": "33092edab88cba4e08621fd91ce741f0",
".git/objects/a5/81512ba4f5b44bb11d643bb5e51f4b39c24a0e": "325f0a1314476529bca3fb302cdf0c03",
".git/objects/d1/3a571967c2dc9e7cbeb9d980618249a41a135b": "96019774acbf6ec8ed4ef67bfd1651e4",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e2/b82ba387bf70fe312423bf37085a73a2603e0c": "b4b5742fcf259c36ad3c2a28e91774e3",
".git/objects/f3/cf58a0dff81f16cadb960f847a0ce21849c2c4": "56fc25ce5b6e4257703f76b70af540ee",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/d550d333bc6153a23cf89c34476d15eef1ca9b": "81d79083a5569c5c7330d10af3996a1c",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/e4/910d78294e033f9bdd2297ce234bdf70c5933c": "db3b5abe5c3eb8d30bc434439e433dcf",
".git/objects/fb/9e6cc6ba56b5af11c5360d62d5557eb245ae61": "38f6f997814965211bad605acb8e54e8",
".git/objects/c6/06caa16378473a4bb9e8807b6f43e69acf30ad": "ed187e1b169337b5fbbce611844136c6",
".git/objects/ec/361605e9e785c47c62dd46a67f9c352731226b": "d1eafaea77b21719d7c450bcf18236d6",
".git/objects/4e/f0666b00e430a193ccf7a426ec571ee14fea3e": "60721110ffd8ad6c2541e6979109b053",
".git/objects/18/96a57974c695472a1634c9c81144ee2f7bdd73": "a46e7a20ca228508e499d49ea1ad0872",
".git/objects/27/a297abdda86a3cbc2d04f0036af1e62ae008c7": "51d74211c02d96c368704b99da4022d5",
".git/objects/29/6d75cd1fa213eec6b5b04ea6a5d4a98c3f4bb0": "eaf10af97be55780904eebbd983305ca",
".git/objects/16/5900ee71cf133f69592ced46a496086c909591": "0e5155cb3020704eb9476a78b67f99c2",
".git/objects/1f/961d5e02eec93875e1cbe26134d08be3a30c13": "6769344cac370df89fad03969917c0b3",
".git/objects/1f/f7fe0ac6f790cd9b764c525be0c9c48d53b773": "4c15ea399d4f2baf3ad638495888eed1",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/73/7f149c855c9ccd61a5e24ce64783eaf921c709": "1d813736c393435d016c1bfc46a6a3a6",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/61c42fb864be1c34a418b0e7d6dbe6af978e92": "32862224b88841b617cc7ba2c396d057",
".git/objects/4c/1c9bc0def6dfeffce4d8adaaa44286796d2dad": "30609ab711c750070a33536aad445f77",
".git/objects/86/03d0a3d2a91580f77171968c7d13e73fd1482a": "dc750bd17c929d834d260dd7dc0293e7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/09/8d2fb5851c92236b72f68263cd91886db729b6": "7605759c2a5f639931d24fdc64171045",
".git/objects/62/5ae92278f9a8a7f0aac434597214c319a56a62": "4e62cb0b4b453da907e1f75fb9ab0995",
".git/objects/5e/a9ffb1899c7c155f11de60c1369fb7f3d32878": "9e21e955e2d1d50fa0fe57d52e22cf51",
".git/objects/6d/5f0fdc7ccbdf7d01fc607eb818f81a0165627e": "2b2403c52cb620129b4bbc62f12abd57",
".git/objects/6c/3655e7e3731676ac5799c12a5c2e623afc9853": "a27da2671b8d41f5e66c3de8927f8eec",
".git/objects/52/a939a38ff4a8a839998fbbb3a71ea2bb756144": "a01025604693931afe788af3bf7a50e5",
".git/objects/52/fe10f9fb79a0a9fc61e7126266cf8bf8b60e31": "cf2b3a2e36f5240bfab8aba15083dbce",
".git/objects/97/8a4d89de1d1e20408919ec3f54f9bba275d66f": "dbaa9c6711faa6123b43ef2573bc1457",
".git/objects/63/6931bcaa0ab4c3ff63c22d54be8c048340177b": "8cc9c6021cbd64a862e0e47758619fb7",
".git/objects/bf/8ed4fabb27b224bc09d106eb603eb88357aa6c": "329ffb05e781c0be339ac620835fa104",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/afd5429fbe3cc7a88b89f454006eb7b018849a": "e4c2e016668208ba57348269fcb46d7b",
".git/objects/dd/d92e7b4aa2c69d5b6d3df6668d9b112aa6e6a3": "0eb6ab29c3b4620fcdd0ecfd82336023",
".git/objects/d2/e35ba7310f6f04f378584211e97021dcf55b9d": "b729ba5113dde46ac1a0d87e57536e6b",
".git/objects/af/31ef4d98c006d9ada76f407195ad20570cc8e1": "a9d4d1360c77d67b4bb052383a3bdfd9",
".git/objects/b7/9a2939390db4ac29037f55675b6a794acc34dc": "2bb63b0481ef2e6819887238af081e4b",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/d6e94f279cebc04ab7b9c7e3ff786fdd56cc2c": "c578d4ceaaa242fd5b3e6ca0ee1728f2",
".git/objects/a8/aa34dff39e781aaef3ab17517247d5c6871814": "41d249c819378c3d2bdea340944cf9c5",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/c3/e81f822689e3b8c05262eec63e4769e0dea74c": "8c6432dca0ea3fdc0d215dcc05d00a66",
".git/objects/c3/2ca4671ef2ec3168df8debb147e67cf7da53fb": "51d53211892df701ba3d4c2accaa3a77",
".git/objects/ea/db1576c503b84e017ba133037410634c995d59": "c14d39af4934eabf8709e538c85f1bd2",
".git/objects/e9/bea402f555a96dab5f75540760dbcd7c377937": "4d306da30f51137bca593301ca1c5c7e",
".git/objects/e7/3eead476bdc9451dce6a198c939908f5c504a8": "bbd49c32f6522483c39a395105a54ed9",
".git/objects/f8/8d2acbeb77694fd154d4ceeb9f1084f6f82cfe": "4ba56f53915dc0f4dbf00b3a11f8549f",
".git/objects/e0/7797437d096064bd90c373800dcb0f335c14b0": "16f9b9defb16491f8c733b09b022688c",
".git/objects/2d/fcdbe9f2df0332cee24295b9c0a4cdbf2478b7": "b40637ed7a305a7a7296f4f96b139cc1",
".git/objects/4f/e6a935272d3a440759e1d5260ab792a1ec0c17": "a8752c1085d23dbee8d874c9e4e90fed",
".git/objects/4f/346c3e43f95e778d7cef3cb6ceede9cd2bf1c8": "99981890f1649c8ef95c28d9e5a27d4e",
".git/objects/15/8affd95c4986a1ea8f6f64102b9e615271653b": "01c8af4473e552830ccdb5cd86441921",
".git/objects/15/ca35f3c17077f659640b96399c770d6ca94da5": "40ddfda65aef3a287278195a5b2c6638",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/1d/bc09dc404e4435a43e509d69232d376acecdb4": "4d26c08383a7fe18fa4dbcc5698227b3",
".git/objects/1d/92d70a0d7834fdfb17d69b7281782afb75fbd6": "0439fad39dc3d25770437455e765ea9e",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "69bc891d282e05a224a8f5437bbe6a13",
".git/logs/refs/heads/gh-pages": "b00f587ac41ce20df6bb66a758632322",
".git/logs/refs/remotes/origin/gh-pages": "a13d29bb14c20166b7bef8ad5c5458ce",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "fa83ca5930b8cd31d7f7cb5a426592bd",
".git/refs/remotes/origin/gh-pages": "fa83ca5930b8cd31d7f7cb5a426592bd",
".git/index": "476e4181c0a68d8db554715c61904181",
".git/COMMIT_EDITMSG": "c7bf6f231946b83db9f6e3c4a6ffca24",
"assets/AssetManifest.json": "e20fb71e48d3c4df194d6c54c264dd70",
"assets/NOTICES": "203b34c73fb7f04d4a9deff45443bccb",
"assets/FontManifest.json": "bdc2d4d06f365579d78f8821589389ce",
"assets/AssetManifest.bin.json": "46e51efb7662160f4e0789750ccd05aa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "cd8579f29a205f199afffaee8e156f1c",
"assets/fonts/MaterialIcons-Regular.otf": "b1dc1543f26bb6025e64dfeb7cbebb12",
"assets/assets/images/soa-code-white.png": "b2f0d62ebae729b5f3ce6dc68f8d926d",
"assets/assets/images/Map.png": "2017e766fffac33df5b66715ac92077a",
"assets/assets/images/home.png": "89bc416b07edc09633f0383db431334c",
"assets/assets/images/linkedin-logo.png": "21505aa267fa2fd09381ee66162510a1",
"assets/assets/images/FeaturesImage.png": "4f8fcb37191b5f664a874ad7ef6adea3",
"assets/assets/images/quotes.png": "f454ffb531767962017b81db87a60d3d",
"assets/assets/images/Avatar.png": "be118d4e1cec5fbd909fc33014a1cbeb",
"assets/assets/images/soa-code.png": "1ce7dfe98aad8b62b597f36a1c13c845",
"assets/assets/images/Logo.png": "ad7942de69d6d97d7715c51d1e9a22c7",
"assets/assets/images/facebook-logo.png": "2611620743fc39789042d34ebaa7dd0c",
"assets/assets/images/2.png": "ad601b9355fd2ebd53fc46a35e548656",
"assets/assets/images/1.png": "f4d63203f612985e4d77690b067ed4aa",
"assets/assets/fonts/Cairo-SemiBold.ttf": "e11b6bc7a07669209243fce5de153be4",
"assets/assets/fonts/Cairo-Regular.ttf": "5ccd08939f634db387c40d6b4b0979c3",
"assets/assets/fonts/Cairo-Light.ttf": "c4a2ada0dd57e03f921b8f7d45820268",
"assets/assets/fonts/Cairo-Bold.ttf": "ad486798eb3ea4fda12b90464dd0cfcd",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
