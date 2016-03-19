.class final Landroid/support/design/widget/FloatingActionButton$Behavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic b:Landroid/support/design/widget/FloatingActionButton$Behavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->b:Landroid/support/design/widget/FloatingActionButton$Behavior;

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/q;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/q;->d()F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 494
    return-void
.end method
