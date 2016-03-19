.class final Lcom/cbs/app/view/SubscriptionActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SubscriptionActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SubscriptionActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$4;->a:Lcom/cbs/app/view/SubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$4;->a:Lcom/cbs/app/view/SubscriptionActivity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Landroid/webkit/WebView;

    .line 293
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 295
    :cond_0
    return-void
.end method
