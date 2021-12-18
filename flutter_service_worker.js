'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "9c8a788c10b5224d4200e771b85235f5",
".git/config": "ac4b0540dbc94deb1155fe7c084b1dce",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "b3bc31e5be440b2d1c166c7c4d4100a1",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bbbb31f73eedf6f3e074fc06cc276b3d",
".git/logs/refs/heads/main": "bbbb31f73eedf6f3e074fc06cc276b3d",
".git/logs/refs/remotes/origin/main": "b14eb47560306377a658429dd1fe4a79",
".git/objects/05/0c03e353eefce9b75ba8db52ea085b046251a8": "0b331de7f2d018bf06e1e20ffe815251",
".git/objects/08/4d6ed3f184674f71892f3fcffd14695c3cb7cb": "ade76c46e166ef7d0dd39b7d7762aea2",
".git/objects/10/a6fc26c4aa1ae242ce97db9f8377b4755b2b1d": "c6ed0fc4e5395bef4df6c344ea98bd66",
".git/objects/11/f8ba52ab9609a11b363557f4ddcbe3776e3ccb": "ef9b89b9395926087fb65399e19f7175",
".git/objects/1e/4ff1944c5bf57518f0564ace3183bb7284b4b3": "28d0dc701bb5354a8802b8ab4100a45d",
".git/objects/28/d7a62f9de97d60d9b7a7ca25742d319f286312": "6cde83dfe1652bb73a4835b3bd0b1ca5",
".git/objects/30/35c4bf22d4352d3f903ce968f6133d805a40ba": "1ee87c3e82c0b7a5a7b0d2447504e6ca",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/38/0f4b329acfd6d52ce5dac8f1236f17afa79f50": "8f563cd579eaf184057d9fa76d76e385",
".git/objects/3e/f2109c00dac3422f3bee5feecb24cdd0ba4d57": "6f827e7ea277a82a7af7ca4adac76633",
".git/objects/46/b05f1e1a594d516705f261ac1276bbfff87468": "a0b69f9b4c2a6916528c357c236aa4c8",
".git/objects/49/aab1025d6756001227071cba821d6400356a92": "a34862e6a4d33d01463795d70e575e51",
".git/objects/59/f95596366a3b64166a6b6faca8d60c31f037e6": "796376a1db0e0f23859e2df0b658bc5c",
".git/objects/6c/fb99f1680a74719998b6fc329aeaba31e3075d": "aa7ecd5196f873237189b87afc44778d",
".git/objects/78/1f7a055b01d525e3fee399873f1f3b9ab208c8": "26566dff9e268dba689c5e0d03bd6672",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7d/4ebb6f818c45a6890074807cfbee01dcb7befe": "14ad5017f46f33b5b93d0cf9e4155e10",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/91/f191d4128ac74df788c546917ed179f79fb932": "65f9ce0a7d741fa6ce439e8ab11251c6",
".git/objects/93/76e3b2a0f2407e88ec9bdeae845530eb3240a8": "71d1e13727a410a665ed7446526d7e9b",
".git/objects/99/71728aeae94bb0d51ec9647c548401fcc51752": "947a97d58b453905a2dd845c12aa8df0",
".git/objects/9c/2f25a594930f7ad243794614b4583a84777e56": "89b9a2988545725cb485dbe1a79275fa",
".git/objects/a0/041a8aaaffb993c17ef827a40a1b4504075bfd": "b1932cc0b36ccc20567297777eb9d5e3",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a3/3e5f4d01aa1685de647624b6e8f7e7894744b6": "63db86e33bcb230911eeba47b3a6f10d",
".git/objects/a7/57c431f9c2789760c9f527e6a771163bbb45a3": "b63eae9454fafecedbc93534c50bd31e",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b0/80f47b4f4e50f677a023935567672e527f2d91": "9263f09f03c2f82b7c6fd8b20c39a8c3",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/eeb44318df47e0078eba1ef15c999ccf020d70": "eeb7b4bf93ba0c83bc21d9eda17b82e1",
".git/objects/bc/26309555fa1cf80b1e8cbc567c9abf3f86637c": "fce7db38c17120fd8bab4c70d661551d",
".git/objects/be/06e7fdca57d8fc360647d7b7a6a0c7b2da7e26": "bae1db93c8ff34b5d96b8a5eaf24771a",
".git/objects/be/7755b75216e74c5d3a6b81ba37d1fc6f487bd1": "56f74c393075242dd044f279e5e52d9e",
".git/objects/c0/dfde8bff80018b250bab20457e3ee5f8703fe3": "5c344d173184f67d3ec60e342f4f9069",
".git/objects/d2/25cf78b670bdd3acc3250128b52aef11315def": "4038035f44cb71248b37bed944f3fa6a",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dd/b8e75fe617fc0c734cefcb54b7646b2deac743": "55e71450d885186e0acf9817711dd2fc",
".git/objects/e1/e3bcb8c792bce647949f19c702a822a5909f13": "5e6d3157028b7dbf1c63f266260ed130",
".git/objects/e3/c8c5eaba565e0b6b9625daed1df85aa23cf9bd": "1ec8ad5a2385b4a6080c2f01fac418aa",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/a28345e6beffc04b9219e314998c9d0904d201": "0fbf470831832d205b7780a76ba56da8",
".git/objects/f8/bc4fff70077d20d7eac6d21da8b143bb2bc87b": "baae2cfb1aa9cfba1d067f1f3215feda",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fe/d93d7aa5fc4d48881179ea8a61482bcc5715df": "c32b93bc958f31be5b4a1fd4bf2ac744",
".git/refs/heads/main": "7f81d6848992bdca0ef84fb3401d70ef",
".git/refs/remotes/origin/main": "7f81d6848992bdca0ef84fb3401d70ef",
"assets/AssetManifest.json": "d09689098d00386a6797b1b8a5d601f4",
"assets/assets/fonts/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/icons/apps.svg": "7328d29e614b32c0bce7fb9b38c1141b",
"assets/assets/icons/bag.svg": "7b028226be2c0359beef455ac6c2426f",
"assets/assets/icons/blob.svg": "1dfe248a6cd1d503668b83acf46dc893",
"assets/assets/icons/check.svg": "25dd8c1f3efeba821b1b7ea295d0a096",
"assets/assets/icons/curly.svg": "bf1dad5f15f0eb17069f0b3ae999a4eb",
"assets/assets/icons/download.svg": "32e00b69bb302cb6755b97b67d0afef4",
"assets/assets/icons/email.svg": "3b9d65accc0f418af8b119be9ebd34c6",
"assets/assets/icons/facebook.svg": "02bf2b8fc87aab6030f4c612a05865c8",
"assets/assets/icons/home.svg": "dd711997e4384548bc851e75e3578a47",
"assets/assets/icons/image.svg": "b158ec26539039f9bd5db827e9e76862",
"assets/assets/icons/linkedin.svg": "13714870b359cadaf0c9d834a20f19bd",
"assets/assets/icons/mobile.svg": "4012b3bcc2ed031a6cc4b26427768bf4",
"assets/assets/icons/navigator.svg": "8cd27bbcc1b99519e63537072cd99e83",
"assets/assets/icons/object.svg": "79b2404d633bbb0c9319b6075d2b5daa",
"assets/assets/icons/skills.svg": "812894ce3ee4b5fca34abf3585cc8d3d",
"assets/assets/icons/user.svg": "870e50fd5fa25f0647eab33df9c584b0",
"assets/assets/icons/wordpress.svg": "607cdae37a842171358ef288e6a932d2",
"assets/assets/images/bg.png": "db1174b6b27278898c0364d2c79fc1fa",
"assets/assets/images/reyad.jpg": "c9a67000071b83395c4c8e381e2c6b5a",
"assets/assets/images/reyad.png": "a58793d8091c0a9b2d211dbc66523e66",
"assets/FontManifest.json": "951c316f84a757c082de1835fcd705de",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "6530645f0a5d2d18a3497319da80bd49",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "86f761a2001e8c1c5da4ddc01c4ce0e7",
"/": "86f761a2001e8c1c5da4ddc01c4ce0e7",
"main.dart.js": "f2ef5765ab30f2c116eebd36eeee0306",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "426313f2f3133c2f20415344c4a22df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
