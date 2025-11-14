# MSRLWeb Raylib API Reference

This document lists all Raylib functions available in MSRLWeb, organized by module.

Generated from: src/R*.cpp module files

## Summary

- **rcore**: 88 functions
- **rshapes**: 69 functions
- **rtextures**: 114 functions
- **rtext**: 51 functions
- **raudio**: 59 functions
- **Total**: 381 functions

## Functions by Module

| rcore | rshapes | rtextures | rtext | raudio |
|-------|---------|-----------|-------|--------|
| BeginBlendMode | CheckCollisionCircleLine | BeginTextureMode | CodepointToUTF8 | CloseAudioDevice |
| BeginDrawing | CheckCollisionCircleRec | ColorAlpha | DrawFPS | GetMasterVolume |
| BeginMode2D | CheckCollisionCircles | ColorAlphaBlend | DrawText | GetMusicTimeLength |
| BeginScissorMode | CheckCollisionLines | ColorBrightness | DrawTextCodepoint | GetMusicTimePlayed |
| ClearBackground | CheckCollisionPointCircle | ColorContrast | DrawTextCodepoints | InitAudioDevice |
| DisableCursor | CheckCollisionPointLine | ColorFromHSV | DrawTextEx | IsAudioDeviceReady |
| EnableCursor | CheckCollisionPointPoly | ColorFromNormalized | DrawTextPro | IsAudioStreamPlaying |
| EncodeDataBase64 | CheckCollisionPointRec | ColorIsEqual | GenImageFontAtlas | IsAudioStreamProcessed |
| EndBlendMode | CheckCollisionPointTriangle | ColorLerp | GetCodepoint | IsAudioStreamValid |
| EndDrawing | CheckCollisionRecs | ColorNormalize | GetCodepointCount | IsMusicStreamPlaying |
| EndMode2D | DrawCircle | ColorTint | GetCodepointNext | IsMusicValid |
| EndScissorMode | DrawCircleGradient | ColorToHSV | GetCodepointPrevious | IsSoundPlaying |
| GetCameraMatrix2D | DrawCircleLines | ColorToInt | GetFontDefault | IsSoundValid |
| GetCharPressed | DrawCircleLinesV | DrawTexture | GetGlyphAtlasRec | IsWaveValid |
| GetClipboardImage | DrawCircleSector | DrawTextureEx | GetGlyphIndex | LoadAudioStream |
| GetFPS | DrawCircleSectorLines | DrawTextureNPatch | GetGlyphInfo | LoadMusicStream |
| GetFrameTime | DrawCircleV | DrawTexturePro | GetTextBetween | LoadMusicStreamFromMemory |
| GetGamepadAxisCount | DrawEllipse | DrawTextureRec | IsFontValid | LoadSound |
| GetGamepadAxisMovement | DrawEllipseLines | DrawTextureV | LoadCodepoints | LoadSoundAlias |
| GetGamepadButtonPressed | DrawEllipseLinesV | EndTextureMode | LoadFont | LoadSoundFromWave |
| GetGamepadName | DrawEllipseV | Fade | LoadFontData | LoadWave |
| GetGestureDetected | DrawLine | GenImageCellular | LoadFontEx | LoadWaveFromMemory |
| GetGestureDragAngle | DrawLineBezier | GenImageChecked | LoadFontFromImage | LoadWaveSamples |
| GetGestureDragVector | DrawLineDashed | GenImageColor | LoadFontFromMemory | PauseAudioStream |
| GetGestureHoldDuration | DrawLineEx | GenImageGradientLinear | LoadTextLines | PauseMusicStream |
| GetGesturePinchAngle | DrawLineStrip | GenImageGradientRadial | LoadUTF8 | PauseSound |
| GetGesturePinchVector | DrawLineV | GenImageGradientSquare | MeasureText | PlayAudioStream |
| GetKeyPressed | DrawPixel | GenImagePerlinNoise | MeasureTextEx | PlayMusicStream |
| GetMouseDelta | DrawPixelV | GenImageText | SetTextLineSpacing | PlaySound |
| GetMousePosition | DrawPoly | GenImageWhiteNoise | TextAppend | ResumeAudioStream |
| GetMouseWheelMove | DrawPolyLines | GenTextureMipmaps | TextCopy | ResumeMusicStream |
| GetMouseWheelMoveV | DrawPolyLinesEx | GetColor | TextFindIndex | ResumeSound |
| GetMouseX | DrawRectangle | GetImageAlphaBorder | TextFormat | SeekMusicStream |
| GetMouseY | DrawRectangleGradientEx | GetImageColor | TextInsert | SetAudioStreamBufferSizeDefault |
| GetRandomValue | DrawRectangleGradientH | GetPixelColor | TextIsEqual | SetAudioStreamPan |
| GetRenderHeight | DrawRectangleGradientV | GetPixelDataSize | TextJoin | SetAudioStreamPitch |
| GetRenderWidth | DrawRectangleLines | ImageAlphaClear | TextLength | SetAudioStreamVolume |
| GetScreenHeight | DrawRectangleLinesEx | ImageAlphaCrop | TextReplace | SetMasterVolume |
| GetScreenToWorld2D | DrawRectanglePro | ImageAlphaMask | TextReplaceBetween | SetMusicPan |
| GetScreenWidth | DrawRectangleRec | ImageAlphaPremultiply | TextSplit | SetMusicPitch |
| GetTime | DrawRectangleRounded | ImageBlurGaussian | TextToCamel | SetMusicVolume |
| GetTouchPointCount | DrawRectangleRoundedLines | ImageClearBackground | TextToFloat | SetSoundPan |
| GetTouchPointId | DrawRectangleRoundedLinesEx | ImageColorBrightness | TextToInteger | SetSoundPitch |
| GetTouchPosition | DrawRectangleV | ImageColorContrast | TextToLower | SetSoundVolume |
| GetTouchX | DrawRing | ImageColorGrayscale | TextToPascal | StopAudioStream |
| GetTouchY | DrawRingLines | ImageColorInvert | TextToSnake | StopMusicStream |
| GetWorldToScreen2D | DrawSplineBasis | ImageColorReplace | TextToUpper | StopSound |
| HideCursor | DrawSplineBezierCubic | ImageColorTint | UnloadCodepoints | UnloadAudioStream |
| IsCursorHidden | DrawSplineBezierQuadratic | ImageCopy | UnloadFont | UnloadMusicStream |
| IsCursorOnScreen | DrawSplineCatmullRom | ImageCrop | UnloadFontData | UnloadSound |
| IsFileExtension | DrawSplineLinear | ImageDither | UnloadUTF8 | UnloadSoundAlias |
| IsGamepadAvailable | DrawSplineSegmentBasis | ImageDraw |  | UnloadWave |
| IsGamepadButtonDown | DrawSplineSegmentBezierCubic | ImageDrawCircle |  | UnloadWaveSamples |
| IsGamepadButtonPressed | DrawSplineSegmentBezierQuadratic | ImageDrawCircleLines |  | UpdateAudioStream |
| IsGamepadButtonReleased | DrawSplineSegmentCatmullRom | ImageDrawCircleLinesV |  | UpdateMusicStream |
| IsGamepadButtonUp | DrawSplineSegmentLinear | ImageDrawCircleV |  | UpdateSound |
| IsGestureDetected | DrawTriangle | ImageDrawLine |  | WaveCopy |
| IsKeyDown | DrawTriangleFan | ImageDrawLineEx |  | WaveCrop |
| IsKeyPressed | DrawTriangleLines | ImageDrawLineV |  | WaveFormat |
| IsKeyPressedRepeat | DrawTriangleStrip | ImageDrawPixel |  |  |
| IsKeyReleased | GetCollisionRec | ImageDrawPixelV |  |  |
| IsKeyUp | GetShapesTexture | ImageDrawRectangle |  |  |
| IsMouseButtonDown | GetShapesTextureRectangle | ImageDrawRectangleLines |  |  |
| IsMouseButtonPressed | GetSplinePointBasis | ImageDrawRectangleRec |  |  |
| IsMouseButtonReleased | GetSplinePointBezierCubic | ImageDrawRectangleV |  |  |
| IsMouseButtonUp | GetSplinePointBezierQuad | ImageDrawText |  |  |
| IsWindowFocused | GetSplinePointCatmullRom | ImageDrawTextEx |  |  |
| IsWindowReady | GetSplinePointLinear | ImageDrawTriangle |  |  |
| LoadFileText | SetShapesTexture | ImageDrawTriangleEx |  |  |
| LoadRandomSequence |  | ImageDrawTriangleFan |  |  |
| OpenURL |  | ImageDrawTriangleLines |  |  |
| SetClipboardText |  | ImageDrawTriangleStrip |  |  |
| SetExitKey |  | ImageFlipHorizontal |  |  |
| SetGamepadMappings |  | ImageFlipVertical |  |  |
| SetGamepadVibration |  | ImageFormat |  |  |
| SetGesturesEnabled |  | ImageFromChannel |  |  |
| SetMouseCursor |  | ImageFromImage |  |  |
| SetMouseOffset |  | ImageKernelConvolution |  |  |
| SetMousePosition |  | ImageMipmaps |  |  |
| SetMouseScale |  | ImageResize |  |  |
| SetRandomSeed |  | ImageResizeCanvas |  |  |
| SetTargetFPS |  | ImageResizeNN |  |  |
| SetTraceLogLevel |  | ImageRotate |  |  |
| SetWindowIcon |  | ImageRotateCCW |  |  |
| SetWindowTitle |  | ImageRotateCW |  |  |
| ShowCursor |  | ImageText |  |  |
| TakeScreenshot |  | ImageTextEx |  |  |
| WaitTime |  | ImageToPOT |  |  |
|  |  | IsImageValid |  |  |
|  |  | IsRenderTextureValid |  |  |
|  |  | IsTextureValid |  |  |
|  |  | LoadImage |  |  |
|  |  | LoadImageAnim |  |  |
|  |  | LoadImageAnimFromMemory |  |  |
|  |  | LoadImageColors |  |  |
|  |  | LoadImageFromMemory |  |  |
|  |  | LoadImageFromScreen |  |  |
|  |  | LoadImageFromTexture |  |  |
|  |  | LoadImagePalette |  |  |
|  |  | LoadImageRaw |  |  |
|  |  | LoadRenderTexture |  |  |
|  |  | LoadTexture |  |  |
|  |  | LoadTextureCubemap |  |  |
|  |  | LoadTextureFromImage |  |  |
|  |  | SetPixelColor |  |  |
|  |  | SetTextureFilter |  |  |
|  |  | SetTextureWrap |  |  |
|  |  | UnloadImage |  |  |
|  |  | UnloadImageColors |  |  |
|  |  | UnloadImagePalette |  |  |
|  |  | UnloadRenderTexture |  |  |
|  |  | UnloadTexture |  |  |
|  |  | UpdateTexture |  |  |
|  |  | UpdateTextureRec |  |  |

---

*Generated on Thu Nov 13 19:10:32 MST 2025*
