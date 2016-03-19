.class final Lcom/cbs/app/adapter/CastTweetAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/adapter/CastTweetAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/cbs/app/adapter/CastTweetAdapter;


# direct methods
.method constructor <init>(Lcom/cbs/app/adapter/CastTweetAdapter;J)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cbs/app/adapter/CastTweetAdapter$3;->b:Lcom/cbs/app/adapter/CastTweetAdapter;

    iput-wide p2, p0, Lcom/cbs/app/adapter/CastTweetAdapter$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter$3;->b:Lcom/cbs/app/adapter/CastTweetAdapter;

    invoke-static {v0}, Lcom/cbs/app/adapter/CastTweetAdapter;->a(Lcom/cbs/app/adapter/CastTweetAdapter;)Lcom/cbs/app/service/social/Twitter;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/service/social/model/TweetOperation;

    iget-wide v2, p0, Lcom/cbs/app/adapter/CastTweetAdapter$3;->a:J

    iget-object v4, p0, Lcom/cbs/app/adapter/CastTweetAdapter$3;->b:Lcom/cbs/app/adapter/CastTweetAdapter;

    invoke-static {v4}, Lcom/cbs/app/adapter/CastTweetAdapter;->b(Lcom/cbs/app/adapter/CastTweetAdapter;)Lcom/cbs/app/view/model/DeviceCast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cbs/app/service/social/model/TweetOperation;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/model/TweetOperation;)V

    .line 127
    return-void
.end method
