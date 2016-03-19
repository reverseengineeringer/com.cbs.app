.class final Lcom/adobe/mobile/o$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/o$b;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/o$b;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/o$b;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/adobe/mobile/o$b$1;->a:Lcom/adobe/mobile/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/adobe/mobile/o$b$1;->a:Lcom/adobe/mobile/o$b;

    invoke-static {v0}, Lcom/adobe/mobile/o$b;->a(Lcom/adobe/mobile/o$b;)Lcom/adobe/mobile/o;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/o;->b(Lcom/adobe/mobile/o;)V

    .line 297
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method
