.class final Lnet/hockeyapp/android/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/c;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/c;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;

    iput-object p2, p0, Lnet/hockeyapp/android/b$1;->b:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lnet/hockeyapp/android/b$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lnet/hockeyapp/android/b$1;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;)V

    .line 371
    iget-object v0, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;

    iget-boolean v1, p0, Lnet/hockeyapp/android/b$1;->c:Z

    invoke-static {v0, v1}, Lnet/hockeyapp/android/b;->a(Lnet/hockeyapp/android/c;Z)V

    .line 372
    return-void
.end method
