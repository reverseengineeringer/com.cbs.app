.class final Lcom/kochava/android/tracker/b$9;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/b;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/b;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/kochava/android/tracker/b$9;->a:Lcom/kochava/android/tracker/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 1752
    invoke-static {}, Lcom/kochava/android/tracker/b;->d()V

    .line 1753
    return-void
.end method
