.class public Lcom/cbs/app/view/PopupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0300ce

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/PopupActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f0f02e0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/PopupActivity$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/PopupActivity$1;-><init>(Lcom/cbs/app/view/PopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
