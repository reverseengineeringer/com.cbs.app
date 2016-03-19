.class public final Lcom/urbanairship/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BannerView:[I

.field public static final BannerView_bannerActionButtonTextAppearance:I = 0x6

.field public static final BannerView_bannerDismissButtonDrawable:I = 0x4

.field public static final BannerView_bannerFontPath:I = 0x0

.field public static final BannerView_bannerNoDismissButton:I = 0x5

.field public static final BannerView_bannerPrimaryColor:I = 0x2

.field public static final BannerView_bannerSecondaryColor:I = 0x3

.field public static final BannerView_bannerTextAppearance:I = 0x1

.field public static final CardView:[I

.field public static final CardView_cardBackgroundColor:I = 0x3

.field public static final CardView_cardCornerRadius:I = 0x4

.field public static final CardView_cardElevation:I = 0x5

.field public static final CardView_cardMaxElevation:I = 0x6

.field public static final CardView_cardPreventCornerOverlap:I = 0x8

.field public static final CardView_cardUseCompatPadding:I = 0x7

.field public static final CardView_contentPadding:I = 0x9

.field public static final CardView_contentPaddingBottom:I = 0xd

.field public static final CardView_contentPaddingLeft:I = 0xa

.field public static final CardView_contentPaddingRight:I = 0xb

.field public static final CardView_contentPaddingTop:I = 0xc

.field public static final CardView_optCardBackgroundColor:I = 0x0

.field public static final CardView_optCardCornerRadius:I = 0x1

.field public static final CardView_optCardElevation:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final Theme:[I

.field public static final Theme_inAppMessageBannerStyle:I = 0x2

.field public static final UAWebView:[I

.field public static final UAWebView_mixed_content_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/urbanairship/R$styleable;->BannerView:[I

    .line 255
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/urbanairship/R$styleable;->CardView:[I

    .line 270
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/urbanairship/R$styleable;->LoadingImageView:[I

    .line 274
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/urbanairship/R$styleable;->MapAttrs:[I

    .line 292
    const/16 v0, 0x6f

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/urbanairship/R$styleable;->Theme:[I

    .line 294
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010180

    aput v2, v0, v1

    sput-object v0, Lcom/urbanairship/R$styleable;->UAWebView:[I

    return-void

    .line 247
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 255
    :array_1
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01004a
        0x7f01004b
        0x7f01004c
        0x7f01004d
        0x7f01004e
        0x7f01004f
        0x7f010050
        0x7f010051
        0x7f010052
        0x7f010053
        0x7f010054
    .end array-data

    .line 270
    :array_2
    .array-data 4
        0x7f010094
        0x7f010095
        0x7f010096
    .end array-data

    .line 274
    :array_3
    .array-data 4
        0x7f010097
        0x7f010098
        0x7f010099
        0x7f01009a
        0x7f01009b
        0x7f01009c
        0x7f01009d
        0x7f01009e
        0x7f01009f
        0x7f0100a0
        0x7f0100a1
        0x7f0100a2
        0x7f0100a3
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
    .end array-data

    .line 292
    :array_4
    .array-data 4
        0x1010057
        0x10100ae
        0x7f01000a
        0x7f0100fa
        0x7f0100fb
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
        0x7f0100ff
        0x7f010100
        0x7f010101
        0x7f010102
        0x7f010103
        0x7f010104
        0x7f010105
        0x7f010106
        0x7f010107
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
        0x7f01010c
        0x7f01010d
        0x7f01010e
        0x7f01010f
        0x7f010110
        0x7f010111
        0x7f010112
        0x7f010113
        0x7f010114
        0x7f010115
        0x7f010116
        0x7f010117
        0x7f010118
        0x7f010119
        0x7f01011a
        0x7f01011b
        0x7f01011c
        0x7f01011d
        0x7f01011e
        0x7f01011f
        0x7f010120
        0x7f010121
        0x7f010122
        0x7f010123
        0x7f010124
        0x7f010125
        0x7f010126
        0x7f010127
        0x7f010128
        0x7f010129
        0x7f01012a
        0x7f01012b
        0x7f01012c
        0x7f01012d
        0x7f01012e
        0x7f01012f
        0x7f010130
        0x7f010131
        0x7f010132
        0x7f010133
        0x7f010134
        0x7f010135
        0x7f010136
        0x7f010137
        0x7f010138
        0x7f010139
        0x7f01013a
        0x7f01013b
        0x7f01013c
        0x7f01013d
        0x7f01013e
        0x7f01013f
        0x7f010140
        0x7f010141
        0x7f010142
        0x7f010143
        0x7f010144
        0x7f010145
        0x7f010146
        0x7f010147
        0x7f010148
        0x7f010149
        0x7f01014a
        0x7f01014b
        0x7f01014c
        0x7f01014d
        0x7f01014e
        0x7f01014f
        0x7f010150
        0x7f010151
        0x7f010152
        0x7f010153
        0x7f010154
        0x7f010155
        0x7f010156
        0x7f010157
        0x7f010158
        0x7f010159
        0x7f01015a
        0x7f01015b
        0x7f01015c
        0x7f01015d
        0x7f01015e
        0x7f01015f
        0x7f010160
        0x7f010161
        0x7f010162
        0x7f010163
        0x7f010164
        0x7f010165
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
