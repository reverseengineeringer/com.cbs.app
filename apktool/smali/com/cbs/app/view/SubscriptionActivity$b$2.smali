.class final Lcom/cbs/app/view/SubscriptionActivity$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SubscriptionActivity$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SubscriptionActivity$b;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SubscriptionActivity$b;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$b$2;->a:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$b$2;->a:Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-static {v0}, Lcom/cbs/app/view/SubscriptionActivity$b;->a(Lcom/cbs/app/view/SubscriptionActivity$b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/SubscriptionActivity;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 551
    return-void
.end method
