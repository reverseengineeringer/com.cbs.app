.class Lcom/mdialog/android/Session$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdialog/android/Session;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/Session;


# direct methods
.method constructor <init>(Lcom/mdialog/android/Session;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdialog/android/Session$1;->a:Lcom/mdialog/android/Session;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mdialog/android/Session$1;->a:Lcom/mdialog/android/Session;

    invoke-static {v0}, Lcom/mdialog/android/Session;->a(Lcom/mdialog/android/Session;)V

    .line 110
    return-void
.end method
