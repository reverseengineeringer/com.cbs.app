.class final Lnet/hockeyapp/android/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lnet/hockeyapp/android/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lnet/hockeyapp/android/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/e/a;-><init>(B)V

    sput-object v0, Lnet/hockeyapp/android/e/a$a;->a:Lnet/hockeyapp/android/e/a;

    return-void
.end method
