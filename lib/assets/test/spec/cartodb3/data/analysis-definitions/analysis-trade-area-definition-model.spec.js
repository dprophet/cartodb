var AnalysisDefinitionsCollection = require('../../../../../javascripts/cartodb3/data/analysis-definitions-collection');

describe('data/analysis-definitions/analysis-trade-area-definition-model', function () {
  beforeEach(function () {
    this.collection = new AnalysisDefinitionsCollection(null, {
      configModel: {},
      vizId: 'v-123'
    });
    this.collection.add({
      id: 'a0',
      type: 'source',
      params: {
        table_name: 'foo_bar',
        source: ''
      }
    });
    this.collection.add({
      id: 'a1',
      type: 'trade-area',
      params: {
        kind: 'car',
        time: 1337,
        source: 'a0'
      }
    });
    this.model = this.collection.get('a1');
  });

  describe('.toJSON', function () {
    beforeEach(function () {
      this.sourceJSON = {
        id: 'a0'
      };
      spyOn(this.collection.get('a0'), 'toJSON').and.returnValue(this.sourceJSON);
      this.json = this.model.toJSON();
    });

    it('should return serialized object', function () {
      expect(this.json).toEqual({
        id: 'a1',
        type: 'trade-area',
        params: {
          kind: 'car',
          time: 1337,
          source: this.sourceJSON
        }
      });
    });
  });
});
