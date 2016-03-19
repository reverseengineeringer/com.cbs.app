.class public Lcom/cbs/app/view/LogoKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/LogoKeeper;->c:Landroid/graphics/drawable/Drawable;

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/cbs/app/view/LogoKeeper;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cbs/app/view/LogoKeeper;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 49
    if-nez p1, :cond_1

    .line 52
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->b:Landroid/graphics/drawable/Drawable;

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "subscriber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "suspended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/LogoKeeper;->b:Landroid/graphics/drawable/Drawable;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/LogoKeeper;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/cbs/app/view/LogoKeeper;->a(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
