.class final Lcom/cbs/app/service/social/TwitterOAuthImpl$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/social/TwitterOAuthImpl;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl$1;->a:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method
