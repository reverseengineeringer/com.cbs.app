.class public final Lcom/cbs/app/view/NielsenDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/cbs/app/view/model/VideoData;

.field private static c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private static d:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/cbs/app/view/NielsenDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/NielsenDialogHelper;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v0, Lcom/cbs/app/view/NielsenDialogHelper;->b:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/NielsenDialogHelper;->d:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/cbs/app/view/NielsenDialogHelper;->d:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

    sget-object v1, Lcom/cbs/app/view/NielsenDialogHelper;->b:Lcom/cbs/app/view/model/VideoData;

    sget-object v2, Lcom/cbs/app/view/NielsenDialogHelper;->c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 80
    sput-object v3, Lcom/cbs/app/view/NielsenDialogHelper;->b:Lcom/cbs/app/view/model/VideoData;

    .line 81
    invoke-static {v3}, Lcom/cbs/app/view/NielsenDialogHelper;->setShowWeWantToSee(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;)V
    .locals 2

    .prologue
    .line 86
    sput-object p1, Lcom/cbs/app/view/NielsenDialogHelper;->d:Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;

    .line 87
    check-cast p0, Lcom/cbs/app/view/AbstractFragmentActivity;

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbs/app/view/NielsenDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1127
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1045
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->v(Landroid/content/Context;)Z

    move-result v1

    .line 1046
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    if-nez v1, :cond_3

    .line 1048
    if-eqz v2, :cond_2

    const-string v3, "fg=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Z)V

    .line 1051
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 1068
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1070
    const-string v1, "Homescreen"

    invoke-static {p0, v1}, Lcom/cbs/app/view/SVODPopupHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_1
    return v0

    .line 1056
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/cbs/app/view/NielsenDialogHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;)V

    goto :goto_0

    .line 1061
    :cond_3
    if-eqz v2, :cond_0

    .line 1062
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setShowWeWantToSee(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/cbs/app/view/NielsenDialogHelper;->c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 33
    return-void
.end method

.method public static setVideoWeWantedToSee(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/cbs/app/view/NielsenDialogHelper;->b:Lcom/cbs/app/view/model/VideoData;

    .line 29
    return-void
.end method
