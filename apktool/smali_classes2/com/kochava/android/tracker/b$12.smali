.class final Lcom/kochava/android/tracker/b$12;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/b;->a(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 2148
    iput-object p1, p0, Lcom/kochava/android/tracker/b$12;->a:Lcom/kochava/android/tracker/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2152
    invoke-static {}, Lcom/kochava/android/tracker/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    invoke-static {}, Lcom/kochava/android/tracker/b;->d()V

    .line 2155
    :cond_0
    invoke-static {}, Lcom/kochava/android/tracker/b;->z()Z

    .line 2156
    return-void
.end method
