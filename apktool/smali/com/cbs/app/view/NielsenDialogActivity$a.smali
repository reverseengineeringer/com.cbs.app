.class final Lcom/cbs/app/view/NielsenDialogActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NielsenDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NielsenDialogActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/NielsenDialogActivity;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cbs/app/view/NielsenDialogActivity$a;->a:Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/NielsenDialogActivity;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/cbs/app/view/NielsenDialogActivity$a;-><init>(Lcom/cbs/app/view/NielsenDialogActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {}, Lcom/cbs/app/view/NielsenDialogActivity;->a()Ljava/lang/String;

    .line 165
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/cbs/app/view/NielsenDialogActivity;->a()Ljava/lang/String;

    .line 150
    iget-boolean v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$a;->b:Z

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 152
    new-instance v1, Lcom/cbs/app/view/NielsenDialogActivity$a$1;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/view/NielsenDialogActivity$a$1;-><init>(Lcom/cbs/app/view/NielsenDialogActivity$a;Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NielsenDialogActivity$a;->b:Z

    .line 161
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/cbs/app/view/NielsenDialogActivity;->a()Ljava/lang/String;

    .line 144
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
