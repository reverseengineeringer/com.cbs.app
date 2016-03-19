.class final Lcom/cbs/app/service/social/TwitterOAuthImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/social/TwitterOAuthImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/social/OAuthRequestBundle;

.field final synthetic b:Lcom/cbs/app/service/social/TwitterOAuthImpl;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Lcom/cbs/app/service/social/OAuthRequestBundle;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iput-object p2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->a:Lcom/cbs/app/service/social/OAuthRequestBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->a:Lcom/cbs/app/service/social/OAuthRequestBundle;

    invoke-static {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/TwitterOAuthImpl;Lcom/cbs/app/service/social/OAuthRequestBundle;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v3, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;->a:Lcom/cbs/app/service/social/OAuthRequestBundle;

    iget v3, v3, Lcom/cbs/app/service/social/OAuthRequestBundle;->f:I

    invoke-static {v2, v0, v3}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
