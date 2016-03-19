.class public Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44d8cf54aef0b5b1L


# instance fields
.field private recentTweetList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tweets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/RecentTweet;",
            ">;"
        }
    .end annotation
.end field

.field private success:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private twitterScreenName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter_screen_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecentTweetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/RecentTweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->recentTweetList:Ljava/util/List;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTwitterScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->twitterScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public setRecentTweetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/RecentTweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->recentTweetList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->success:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public setTwitterScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/RecentTweetEndpointResponse;->twitterScreenName:Ljava/lang/String;

    .line 62
    return-void
.end method
