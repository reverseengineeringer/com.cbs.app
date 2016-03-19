.class public final Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

.field private final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->a:Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote Control API\'s exist, should not be given a null MetadataEditor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->b:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 102
    :cond_0
    return-object p0
.end method

.method public final a(J)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient$MetadataEditor;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 145
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient$MetadataEditor;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 121
    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 170
    :cond_0
    return-void
.end method
