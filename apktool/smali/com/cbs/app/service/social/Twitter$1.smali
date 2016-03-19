.class final Lcom/cbs/app/service/social/Twitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/model/TweetOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/social/Twitter;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/social/Twitter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cbs/app/service/social/Twitter$1;->a:Lcom/cbs/app/service/social/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$1;->a:Lcom/cbs/app/service/social/Twitter;

    invoke-static {v0}, Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/Twitter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    return-void
.end method
