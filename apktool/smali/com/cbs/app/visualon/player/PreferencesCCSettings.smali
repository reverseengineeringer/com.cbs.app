.class public Lcom/cbs/app/visualon/player/PreferencesCCSettings;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0, p0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    const-string v1, "@@@  JavavomePreferencesCCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0012

    const v5, 0x7f0e000d

    const v4, 0x7f0e000c

    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1046
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1050
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1051
    const-string v2, "Subtitle Settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1052
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1055
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1056
    const-string v2, "cc_font_size"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1057
    const-string v2, "Change Font Size"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1058
    const-string v2, "Set to enable font size"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1060
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1062
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 1063
    const-string v2, "Set Font Size"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1064
    const-string v2, "cc_font_size_val"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 1065
    const-string v2, "Font Size"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    const-string v2, "Change font size, range is from 50 to 200"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1067
    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1068
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1070
    const-string v2, "cc_font_size"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1074
    const-string v2, "cc_font_color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1075
    const-string v2, "Enable Font Color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1076
    const-string v2, "Set to enable font color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1080
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 1081
    const-string v2, "Set Font Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1082
    const-string v2, "cc_font_color_opacity_val"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 1083
    const-string v2, "Font Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1084
    const-string v2, "Change color opacity, range is from 50 (semi-transparent) to 100 (opaque)"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1085
    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1086
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1088
    const-string v2, "cc_font_color"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 1090
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1091
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1092
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1093
    const-string v2, "Font Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1094
    const-string v2, "cc_font_color_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1095
    const-string v2, "Font Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1096
    const-string v2, "Change font color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1097
    const-string v2, "white"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1098
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1100
    const-string v2, "cc_font_color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1104
    const-string v2, "cc_background_color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1105
    const-string v2, "Enable Background Color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    const-string v2, "Set to enable background color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1107
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1110
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 1111
    const-string v2, "Set Background Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1112
    const-string v2, "cc_background_color_opacity_val"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 1113
    const-string v2, "Background Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1114
    const-string v2, "Change background color opacity, range is from 0 (transparent) to 100 (opaque)"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1115
    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1116
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1118
    const-string v2, "cc_background_color"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1121
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1122
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1123
    const-string v2, "Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1124
    const-string v2, "cc_background_color_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1125
    const-string v2, "Background Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1126
    const-string v2, "Change background color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1127
    const-string v2, "black"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1128
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1130
    const-string v2, "cc_background_color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1134
    const-string v2, "cc_edge_color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1135
    const-string v2, "Enable Edge Color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1136
    const-string v2, "Set to enable edge color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1137
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1138
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1140
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 1141
    const-string v2, "Set Edge Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1142
    const-string v2, "cc_edge_color_opacity_val"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 1143
    const-string v2, "Edge Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1144
    const-string v2, "Change edge color opacity, range is from 0 (transparent) to 100 (opaque)"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1145
    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1146
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1148
    const-string v2, "cc_edge_color"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1151
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1152
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1153
    const-string v2, "Edge Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1154
    const-string v2, "cc_edge_color_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1155
    const-string v2, "Edge Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1156
    const-string v2, "Change edge color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1157
    const-string v2, "green"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1158
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1160
    const-string v2, "cc_edge_color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1163
    const v2, 0x7f0e0010

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1164
    const v2, 0x7f0e0011

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1165
    const-string v2, "Edge Type List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1166
    const-string v2, "cc_edge_type_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1167
    const-string v2, "Edge Type List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1168
    const-string v2, "Change edge type"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1169
    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1170
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1172
    const-string v2, "cc_edge_color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1175
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1176
    const-string v2, "cc_font_name"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1177
    const-string v2, "Enable Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1178
    const-string v2, "Set to enable font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1179
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1180
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1182
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1183
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1184
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1185
    const-string v2, "Fonts list"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1186
    const-string v2, "cc_font_name_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1187
    const-string v2, "Font List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1188
    const-string v2, "Change font"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1189
    const-string v2, "Arial"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1190
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1192
    const-string v2, "cc_font_name"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1195
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1196
    const-string v2, "cc_win_color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1197
    const-string v2, "Enable Window Background Color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1198
    const-string v2, "Set to enable window background color"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1199
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1200
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1202
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 1203
    const-string v2, "Set Window Background Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1204
    const-string v2, "cc_win_color_opacity_val"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 1205
    const-string v2, "Window Background Color Opacity"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1206
    const-string v2, "Change window background color opacity, range is from 0 (transparent) to 100 (opaque)"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1207
    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1210
    const-string v2, "cc_win_color"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 1212
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1213
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1214
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1215
    const-string v2, "Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1216
    const-string v2, "cc_win_color_val"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1217
    const-string v2, "Window Background Color List"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1218
    const-string v2, "Change background color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1219
    const-string v2, "transparent"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1220
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1222
    const-string v2, "cc_win_color"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDependency(Ljava/lang/String;)V

    .line 1225
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1227
    const-string v2, "cc_enable_font_underline"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1228
    const-string v2, "Enable Underline Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1229
    const-string v2, "Set to enable underline font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1230
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1231
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1233
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1234
    const-string v2, "cc_font_underline"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1235
    const-string v2, "Set Underline Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1236
    const-string v2, "Set to enable underline font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1237
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1240
    const-string v2, "cc_enable_font_underline"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1245
    const-string v2, "cc_enable_font_bold"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1246
    const-string v2, "Enable Bold Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1247
    const-string v2, "Set to enable bold font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1249
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1251
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1252
    const-string v2, "cc_font_bold"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1253
    const-string v2, "Set Bold Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1254
    const-string v2, "Set to enable bold font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1256
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1258
    const-string v2, "cc_enable_font_bold"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 1261
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1263
    const-string v2, "cc_enable_font_italic"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1264
    const-string v2, "Enable Italic Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1265
    const-string v2, "Set to enable italic font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1266
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1267
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1269
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1270
    const-string v2, "cc_font_italic"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1271
    const-string v2, "Set Italic Font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1272
    const-string v2, "Set to enable italic font"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1273
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1274
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1276
    const-string v1, "cc_enable_font_italic"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 42
    return-void
.end method
