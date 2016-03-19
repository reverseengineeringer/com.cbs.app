.class final Landroid/support/design/internal/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/internal/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p1, p0, Landroid/support/design/internal/b$e;->a:I

    .line 621
    iput p2, p0, Landroid/support/design/internal/b$e;->b:I

    .line 622
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/support/design/internal/b$e;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Landroid/support/design/internal/b$e;->b:I

    return v0
.end method
