.class final Lnet/hockeyapp/android/d/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/d/b;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/d/b;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lnet/hockeyapp/android/d/b$2;->a:Lnet/hockeyapp/android/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lnet/hockeyapp/android/d/b$2;->a:Lnet/hockeyapp/android/d/b;

    invoke-static {v0}, Lnet/hockeyapp/android/d/b;->a(Lnet/hockeyapp/android/d/b;)Lnet/hockeyapp/android/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/b/a;->a(Ljava/lang/Boolean;)V

    .line 189
    return-void
.end method
