.class public final Lcom/adobe/b/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/b/c/e;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "android-1.5.1.0-fcfe009"

    return-object v0
.end method

.method public static b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/adobe/b/c/e;->a:Ljava/lang/Integer;

    return-object v0
.end method
