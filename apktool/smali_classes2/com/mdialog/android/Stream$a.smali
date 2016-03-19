.class Lcom/mdialog/android/Stream$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/Stream;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdialog/android/Stream;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/mdialog/android/Stream$a;->a:Lcom/mdialog/android/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p2, p0, Lcom/mdialog/android/Stream$a;->b:Ljava/lang/String;

    .line 644
    if-nez p3, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/mdialog/android/Stream$a;->a()V

    .line 647
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/mdialog/android/Stream$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mdialog/android/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mdialog/android/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 659
    iget-object v1, p0, Lcom/mdialog/android/Stream$a;->a:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/a/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mdialog/android/Stream;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/mdialog/android/Stream$a;->a:Lcom/mdialog/android/Stream;

    invoke-static {v0}, Lcom/mdialog/android/Stream;->b(Lcom/mdialog/android/Stream;)V

    .line 651
    return-void
.end method
