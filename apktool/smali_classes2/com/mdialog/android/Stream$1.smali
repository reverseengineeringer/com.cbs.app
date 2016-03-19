.class Lcom/mdialog/android/Stream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/Stream;


# direct methods
.method constructor <init>(Lcom/mdialog/android/Stream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/Stream$1;->a:Lcom/mdialog/android/Stream;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mdialog/android/Stream$1;->a:Lcom/mdialog/android/Stream;

    invoke-static {v0}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/Stream;)V

    .line 617
    return-void
.end method
