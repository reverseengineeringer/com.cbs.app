.class final Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;B)V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1133
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(Z)V

    .line 1134
    return v1

    .line 1133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
