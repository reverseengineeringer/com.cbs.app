.class final Lcom/cbs/app/view/SubscriptionActivity$1;
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
    .line 228
    iput-object p1, p0, Lcom/cbs/app/view/SubscriptionActivity$1;->a:Lcom/cbs/app/view/SubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity$1;->a:Lcom/cbs/app/view/SubscriptionActivity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 235
    check-cast v0, Landroid/webkit/WebView;

    .line 236
    iget-object v1, p0, Lcom/cbs/app/view/SubscriptionActivity$1;->a:Lcom/cbs/app/view/SubscriptionActivity;

    const v2, 0x7f0f0167

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 237
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 238
    check-cast v1, Landroid/widget/EditText;

    .line 239
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {}, Lcom/cbs/app/view/SubscriptionActivity;->a()Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method
