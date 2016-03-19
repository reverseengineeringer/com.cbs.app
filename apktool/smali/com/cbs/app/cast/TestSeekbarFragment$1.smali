.class final Lcom/cbs/app/cast/TestSeekbarFragment$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/TestSeekbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/TestSeekbarFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/TestSeekbarFragment;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/cast/TestSeekbarFragment$1;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c(I)V

    .line 42
    iget-object v0, p0, Lcom/cbs/app/cast/TestSeekbarFragment$1;->a:Lcom/cbs/app/cast/TestSeekbarFragment;

    invoke-virtual {v0}, Lcom/cbs/app/cast/TestSeekbarFragment;->dismiss()V

    .line 43
    return-void
.end method
