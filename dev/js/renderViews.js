// Generated by CoffeeScript 1.7.1
var changeFeedStyle, closeMenu, closeModal, renderBadges, renderFeed, renderGuide, renderMain, renderMenu, renderModal, renderView;

renderMain = function() {
  var template;
  template = config.templates.main;
  return this.$el.append(template);
};

renderGuide = function() {
  var template;
  template = config.templates.guide(teamList);
  return this.$el.find(".guide").append(template);
};

renderFeed = function() {
  var template;
  template = config.templates.feed(feed);
  return this.$el.find(".feed").append(template);
};

renderBadges = function() {
  var i, item, k, res, str, _i, _ref, _results;
  console.log("========== Render Badges ==========");
  _results = [];
  for (i = _i = 0, _ref = feed.feeds.length; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
    str = feed.feeds[i].content;
    _results.push((function() {
      var _j, _ref1, _results1;
      _results1 = [];
      for (k = _j = 0, _ref1 = teamList.teams.length; 0 <= _ref1 ? _j < _ref1 : _j > _ref1; k = 0 <= _ref1 ? ++_j : --_j) {
        res = str.match(teamList.teams[k].shortname);
        if (res) {
          res = res[0].toLowerCase();
          item = this.$el.find(".feed li[data-index=" + i + "]");
          _results1.push(item.find("img").attr("src", "images/" + res + "/logo-001.png"));
        } else {
          _results1.push(void 0);
        }
      }
      return _results1;
    }).call(this));
  }
  return _results;
};

renderMenu = function(menu) {
  $("header").addClass("open");
  return $("header").attr("data-view", menu);
};

closeMenu = function(menu) {
  $("header").removeClass("open");
  return $("header").removeAttr("data-view");
};

changeFeedStyle = function(view) {
  return this.$el.find(".feed").attr("data-style", "" + view + "");
};

renderView = function(view) {
  this.$el.find("[data-view]").removeClass("show");
  this.$el.find("[data-view='" + view + "']").addClass("show");
  return $("header").removeAttr("data-view");
};

renderModal = function(index) {
  var template;
  this.$el.find(".modal").addClass("open");
  template = config.templates.article;
  return this.$el.find(".modal").append(template);
};

closeModal = function() {
  return $(".modal").removeClass("open");
};
