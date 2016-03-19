.class public Lcom/cbs/app/view/NielsenDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/NielsenDialogActivity$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/NielsenDialogActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cbs/app/view/NielsenDialogActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 114
    const v0, 0x7f0300c0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 115
    const v0, 0x7f0f02c1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cbs/app/view/NielsenDialogActivity;->b:Landroid/widget/ProgressBar;

    .line 116
    const v0, 0x7f0f0170

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f0f0171

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    new-instance v2, Lcom/cbs/app/view/NielsenDialogActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/NielsenDialogActivity$6;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0f02c0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 126
    new-instance v2, Lcom/cbs/app/view/NielsenDialogActivity$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/view/NielsenDialogActivity$a;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 128
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 131
    sget-object v0, Lcom/cbs/app/analytics/Action;->r:Lcom/cbs/app/analytics/Action;

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-virtual {v1, p3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/cbs/app/view/NielsenDialogActivity;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 135
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/cbs/app/view/NielsenDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/cbs/app/view/NielsenDialogActivity;->finish()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->setContentView(I)V

    .line 39
    iput-object p0, p0, Lcom/cbs/app/view/NielsenDialogActivity;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, v3}, Lcom/cbs/app/view/NielsenDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 1054
    const v0, 0x7f0f02c7

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NielsenDialogActivity$1;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    const v0, 0x7f0f02c3

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NielsenDialogActivity$2;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    const v0, 0x7f0f02c4

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NielsenDialogActivity$3;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    const v0, 0x7f0f02c5

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NielsenDialogActivity$4;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    const v0, 0x7f0f02c6

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NielsenDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NielsenDialogActivity$5;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1106
    iget-object v1, p0, Lcom/cbs/app/view/NielsenDialogActivity;->a:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/analytics/Action;->r:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/cbs/app/view/NielsenDialogActivity;->setResult(I)V

    .line 43
    return-void
.end method
