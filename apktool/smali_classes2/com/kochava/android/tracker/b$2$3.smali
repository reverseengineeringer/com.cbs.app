.class final Lcom/kochava/android/tracker/b$2$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/b$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/b$2;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/b$2;)V
    .locals 0

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/kochava/android/tracker/b$2$3;->a:Lcom/kochava/android/tracker/b$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 2476
    invoke-static {}, Lcom/kochava/android/tracker/b;->d()V

    .line 2477
    return-void
.end method
