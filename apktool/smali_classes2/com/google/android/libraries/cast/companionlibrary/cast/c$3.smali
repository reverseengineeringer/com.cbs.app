.class final Lcom/google/android/libraries/cast/companionlibrary/cast/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1192
    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_0
    return-void
.end method
