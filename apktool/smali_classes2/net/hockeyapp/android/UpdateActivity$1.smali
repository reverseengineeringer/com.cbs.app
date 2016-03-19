.class final Lnet/hockeyapp/android/UpdateActivity$1;
.super Lnet/hockeyapp/android/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lnet/hockeyapp/android/i;->b()Lnet/hockeyapp/android/j;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->a()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V

    goto :goto_0
.end method
