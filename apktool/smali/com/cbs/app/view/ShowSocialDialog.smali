.class public Lcom/cbs/app/view/ShowSocialDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/ShowSocialDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const-string v0, ""

    .line 130
    if-eqz p0, :cond_0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const v3, 0x7f0f017d

    const v8, 0x7f0f017c

    const/16 v12, 0x8

    const/4 v1, 0x1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    const/4 v2, 0x0

    .line 33
    instance-of v0, p0, Lcom/cbs/app/view/SplashActivity2;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    move v9, v1

    .line 39
    :goto_0
    new-instance v10, Landroid/app/Dialog;

    invoke-direct {v10, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v10, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 41
    const v0, 0x7f030055

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 42
    const v0, 0x7f0f0170

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    const v1, 0x7f080219

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-static {p1, p2}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;

    move-result-object v11

    .line 46
    if-eqz p2, :cond_9

    .line 47
    invoke-virtual {p2}, Lcom/cbs/app/view/model/ShowConfig;->getFacebookLink()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v0, Lcom/cbs/app/view/ShowSocialDialog$1;

    invoke-direct {v0}, Lcom/cbs/app/view/ShowSocialDialog$1;-><init>()V

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 59
    :goto_1
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    :cond_0
    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    :goto_2
    if-eqz p2, :cond_8

    .line 76
    invoke-virtual {p2}, Lcom/cbs/app/view/model/ShowConfig;->getTwitterLink()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 78
    :goto_3
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    :cond_1
    invoke-virtual {v10, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_4
    const v0, 0x7f0f017e

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v6

    const-string v8, "Show Home"

    move-object v2, p0

    move-object v4, v11

    invoke-static/range {v1 .. v8}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .line 96
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const v0, 0x7f0f017f

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "Show Page"

    invoke-static {v0, p0, p1, v1}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z

    .line 100
    :cond_2
    const v0, 0x7f0f0180

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v0, 0x7f0f0171

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    new-instance v1, Lcom/cbs/app/view/ShowSocialDialog$2;

    invoke-direct {v1, v10}, Lcom/cbs/app/view/ShowSocialDialog$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_3
    if-eqz v9, :cond_4

    .line 122
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 125
    :cond_4
    return-void

    .line 35
    :cond_5
    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    move v9, v1

    .line 36
    goto/16 :goto_0

    .line 68
    :cond_6
    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    const-string v6, "Show Home"

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    goto/16 :goto_2

    .line 88
    :cond_7
    invoke-virtual {v10, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1}, Lcom/cbs/app/view/ShowSocialDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    const-string v6, "Show Home"

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/service/ButtonServiceHelper;->c(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    goto/16 :goto_4

    :cond_8
    move-object v1, v7

    goto/16 :goto_3

    :cond_9
    move-object v2, v7

    goto/16 :goto_1

    :cond_a
    move v9, v2

    goto/16 :goto_0
.end method
