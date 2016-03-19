.class final Lcom/google/c/a/a$10;
.super Lcom/google/c/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/c/a/a$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/a/a;)Lcom/google/c/a/a;
    .locals 0

    .prologue
    .line 318
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method public final a(C)Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 273
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    return v0
.end method
