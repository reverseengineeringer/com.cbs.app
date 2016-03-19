.class Lcom/facebook/applinks/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lb/b;",
        ">;",
        "Lb/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lb/g;)Lb/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lb/b;",
            ">;>;)",
            "Lb/b;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lb/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b;

    return-object v0
.end method

.method public bridge synthetic then(Lb/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->then(Lb/g;)Lb/b;

    move-result-object v0

    return-object v0
.end method
