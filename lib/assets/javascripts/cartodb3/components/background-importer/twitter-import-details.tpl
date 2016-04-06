<div class="Dialog-header BackgroundPollingDetails-header TwitterImportDetails-header">
  <div class="Dialog-headerIcon Dialog-headerIcon--positive">
    <i class="CDB-IconFont CDB-IconFont-twitter"></i>
    <span class="Badge Badge--positive Dialog-headerIconBadge">
      <i class="CDB-IconFont CDB-IconFont-check"></i>
    </span>
  </div>
  <h3 class="Dialog-headerTitle">Your Twitter <%- type %> is created</h3>
  <p class="Dialog-headerText">
    <% if (datasetTotalRows === 0) { %>
    <%- _t('components.background-importer.twitter-import-details.errors.no-results') %>
    <% } else { %>
      We've created a new <%- type %> containing a total of <%- datasetTotalRowsFormatted %> <br/>tweet<%- datasetTotalRows != 1 ? 's' : '' %> with your search terms
    <% } %>
  </p>
</div>
<div class="BackgroundPollingDetails-body">
  <div class="LayoutIcon BackgroundPollingDetails-icon <%- tweetsCost > 0 ? 'is-nonFree' : 'is-free' %>">
    <i class="CDB-IconFont CDB-IconFont-dollar"></i>
  </div>
  <div class="BackgroundPollingDetails-info">
    <h4 class="BackgroundPollingDetails-infoTitle">
      <% if (tweetsCost > 0) { %>
      <%- _t('components.background-importer.twitter-import-details.tweet-cost.paid', { tweetsCostFormatted: tweetsCostFormatted }) %>
      <% } else { %>
      <%- _t('components.background-importer.twitter-import-details.tweet-cost.free', { tweetsCostFormatted: tweetsCostFormatted }) %>
      <% } %>
    </h4>
    <p class="BackgroundPollingDetails-infoText DefaultParagraph">
      <% if (tweetsCost > 0 || availableTweets <= 0) { %>
      <%- _t('components.background-importer.twitter-import-details.no-more-credits', { blockPriceFormatted: blockPriceFormatted, blockSizeFormatted: blockSizeFormatted }) %>
      <% } else { %>
        You still have <%- availableTweetsFormatted %> credit<%- availableTweets != 1 ? 's' : ''  %> left for this billing cycle.
      <% } %>
    </p>
  </div>
</div>
<div class="Dialog-footer BackgroundPollingDetails-footer">
  <a href="<%- mapURL %>" class="Button Button--secondary BackgroundPollingDetails-footerButton">
    <span><%- _t('components.background-importer.twitter-import-details.view-type', { type: type }) %></span>
  </a>
</div>
