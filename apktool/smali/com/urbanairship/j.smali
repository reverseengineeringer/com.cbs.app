.class public final Lcom/urbanairship/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x6

    sput v0, Lcom/urbanairship/j;->a:I

    .line 50
    const-string v0, "UALib"

    sput-object v0, Lcom/urbanairship/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    sget v0, Lcom/urbanairship/j;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 155
    sget-object v0, Lcom/urbanairship/j;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 177
    sget v0, Lcom/urbanairship/j;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 178
    sget-object v0, Lcom/urbanairship/j;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 165
    sget v0, Lcom/urbanairship/j;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/urbanairship/j;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    return-void
.end method
