.class final Lcom/cbs/app/service/social/TwitterOAuthImpl$3;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/cbs/app/service/social/TwitterOAuthImpl;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iput-object p2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-static {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-static {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Lcom/cbs/app/service/social/TwitterOAuthResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->a:Ljava/lang/String;

    const-string v1, "failed with response: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-static {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Lcom/cbs/app/service/social/TwitterOAuthResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->b:I

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/service/social/TwitterOAuthResponse;->b(Ljava/lang/String;I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-static {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Lcom/cbs/app/service/social/TwitterOAuthResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->b:I

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/service/social/TwitterOAuthResponse;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-static {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Lcom/cbs/app/service/social/TwitterOAuthResponse;

    move-result-object v0

    const-string v1, "failed with null"

    iget v2, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;->b:I

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/service/social/TwitterOAuthResponse;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
