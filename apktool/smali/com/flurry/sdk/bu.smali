.class public abstract Lcom/flurry/sdk/bu;
.super Lcom/flurry/sdk/bt;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/flurry/sdk/bt;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/bu;->a:I

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x186a0

    iput v0, p0, Lcom/flurry/sdk/bu;->a:I

    .line 30
    return-void
.end method
