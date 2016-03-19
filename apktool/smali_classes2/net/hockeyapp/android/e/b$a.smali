.class final Lnet/hockeyapp/android/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lnet/hockeyapp/android/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lnet/hockeyapp/android/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/e/b;-><init>(B)V

    sput-object v0, Lnet/hockeyapp/android/e/b$a;->a:Lnet/hockeyapp/android/e/b;

    return-void
.end method
