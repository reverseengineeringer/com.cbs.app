.class final Lcom/cbs/app/adapter/CastTweetAdapter$1;
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
    .line 111
    iput-object p1, p0, Lcom/cbs/app/adapter/CastTweetAdapter$1;->b:Lcom/cbs/app/adapter/CastTweetAdapter;

    iput-wide p2, p0, Lcom/cbs/app/adapter/CastTweetAdapter$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter$1;->b:Lcom/cbs/app/adapter/CastTweetAdapter;

    invoke-static {v0}, Lcom/cbs/app/adapter/CastTweetAdapter;->a(Lcom/cbs/app/adapter/CastTweetAdapter;)Lcom/cbs/app/service/social/Twitter;

    move-result-object v0

    iget-wide v2, p0, Lcom/cbs/app/adapter/CastTweetAdapter$1;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/cbs/app/service/social/Twitter;->b(J)V

    .line 115
    return-void
.end method
