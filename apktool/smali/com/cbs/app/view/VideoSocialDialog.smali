.class public Lcom/cbs/app/view/VideoSocialDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/cbs/app/view/VideoSocialDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/VideoSocialDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/ShowConfig;)V
    .locals 7

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    .line 49
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 50
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 51
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f030055

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 52
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const-string v1, "Episode Options"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/cbs/app/view/VideoSocialDialog$1;

    invoke-direct {v1}, Lcom/cbs/app/view/VideoSocialDialog$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f017d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    const-string v1, "Share on Facebook"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Lcom/cbs/app/view/VideoSocialDialog$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/cbs/app/view/VideoSocialDialog$2;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/Show;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 168
    const-string v1, "Share on Twitter"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v1, Lcom/cbs/app/view/VideoSocialDialog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/cbs/app/view/VideoSocialDialog$3;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f017e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 214
    new-instance v0, Lcom/cbs/app/view/VideoSocialDialog$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/VideoSocialDialog$4;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f017f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "Show Page"

    invoke-static {v0, p0, p1, v1}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z

    .line 260
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f0180

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 261
    new-instance v1, Lcom/cbs/app/view/VideoSocialDialog$5;

    invoke-direct {v1, p0, p1, v4, p2}, Lcom/cbs/app/view/VideoSocialDialog$5;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    const v1, 0x7f0f0171

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 316
    new-instance v1, Lcom/cbs/app/view/VideoSocialDialog$6;

    invoke-direct {v1}, Lcom/cbs/app/view/VideoSocialDialog$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 325
    :cond_0
    return-void
.end method

.method static synthetic b()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/cbs/app/view/VideoSocialDialog;->b:Landroid/app/Dialog;

    return-object v0
.end method
