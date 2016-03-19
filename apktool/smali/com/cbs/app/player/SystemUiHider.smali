.class public abstract Lcom/cbs/app/player/SystemUiHider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field private static e:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

.field protected b:Landroid/support/v7/app/AppCompatActivity;

.field protected c:Landroid/view/View;

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/cbs/app/player/SystemUiHider$1;

    invoke-direct {v0}, Lcom/cbs/app/player/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/cbs/app/player/SystemUiHider;->e:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/cbs/app/player/SystemUiHider;->e:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/cbs/app/player/SystemUiHider;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    .line 70
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/cbs/app/player/SystemUiHider;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 71
    iput-object p2, p0, Lcom/cbs/app/player/SystemUiHider;->c:Landroid/view/View;

    .line 72
    iput p3, p0, Lcom/cbs/app/player/SystemUiHider;->d:I

    .line 73
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lcom/cbs/app/player/SystemUiHider;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, v2}, Lcom/cbs/app/player/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cbs/app/player/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, v2}, Lcom/cbs/app/player/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public setOnVisibilityChangeListener(Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    sget-object p1, Lcom/cbs/app/player/SystemUiHider;->e:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/cbs/app/player/SystemUiHider;->a:Lcom/cbs/app/player/SystemUiHider$OnVisibilityChangeListener;

    .line 132
    return-void
.end method
